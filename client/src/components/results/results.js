import React, { useState, useEffect } from "react";
import "../results/results.css";

function PlayerScores({ player_id }) {
  const [scores, setScores] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState(null);
  const [scoregenre, setScoreGenre] = useState(null);

  //testing variables
  const [books, setBooks] = useState(null);

  useEffect(() => {
    const fetchScores = async () => {
      try {
        const response = await fetch(
          `http://localhost:3001/scores?player_id=${player_id}`
        );
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        const jsonResponse = await response.json();
        // Sort scores and then take the top 10
        const sortedScores = jsonResponse.data.playerScores
          .sort((a, b) => b.score - a.score)
          .slice(0, 1); // Take only the top 10 scores
        setScores(sortedScores);
        const highestScoreGameObjectId = sortedScores[0].gameObjectId;
        console.log("genre id", highestScoreGameObjectId);
        const genre = jsonResponse.highestScoreDetails;
        console.log("JSON", jsonResponse);
        console.log("genre name", genre);

        //testing
        setScoreGenre(genre);

        const fetchFantasyBooks = async (scoregenre) => {
          const genreObject = encodeURIComponent(scoregenre.toLowerCase());

          console.log(genreObject);

          try {
            // Use template literals to insert the variable into the string
            const response = await fetch(
              `https://openlibrary.org/subjects/${genreObject}.json?details=false`
            );
            if (!response.ok) {
              throw new Error("Network response was not ok");
            }
            const data = await response.json();
            // Only take the first 10 results
            setBooks(data.works.slice(0, 10));
          } catch (error) {
            setError(error.message);
          } finally {
            setIsLoading(false);
          }
        };

        // Assuming genre is a string and contains the correct genre
        // for the Open Library API call. Make sure genre is not an object.
        if (genre) {
          // Call fetchFantasyBooks and pass the genre
          fetchFantasyBooks(genre);
        }

        //working
      } catch (error) {
        setError(error.message);
      } finally {
        setIsLoading(false);
      }
    };

    //testing

    //working
    if (player_id) {
      fetchScores();
    } else {
      setIsLoading(false);
    }
  }, [player_id]);

  if (isLoading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error}</div>;
  }

  return (
    <div>
      <h2 className="csslabel">Recommended Genre: </h2>
      <div className="result" style={{ padding: "10px" }}>
        {scores && scores.length > 0 ? (
          scores.map((score, index) => (
            <div key={index} style={{ marginBottom: "10px" }}>
              <div className="result" style={{ fontWeight: "bold" }}>
                {score.gameObject ? score.gameObject.name : "Unknown Game"}
              </div>
              <div
                className="score"
                style={{
                  width: `${(score.score / 2) * 100}%`, // Assuming score is normalized [0,1]
                  color: "royalblue",
                  textAlign: "right",
                  padding: "5px",
                  borderRadius: "5px",
                  maxWidth: "100%",
                }}
              >
                Score: {score.score.toFixed(2)}
              </div>
            </div>
          ))
        ) : (
          <div>No scores available</div>
        )}
      </div>
      <h1>{scoregenre} Book Recommendations: </h1>
      <div className="bookcontainer">
        <ul>
          {books &&
            books.map((book, index) => <li key={index}>{book.title}</li>)}
        </ul>
      </div>
    </div>
  );
}

export default PlayerScores;
