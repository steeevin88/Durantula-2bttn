import React, { useState, useEffect } from 'react';

function PlayerScores({ player_id }) {
  const [scores, setScores] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchScores = async () => {
      try {
        const response = await fetch(`http://localhost:3001/scores?player_id=${player_id}`);
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        const jsonResponse = await response.json();
        // Sort scores and then take the top 10
        const sortedScores = jsonResponse.data.playerScores
          .sort((a, b) => b.score - a.score)
          .slice(0, 10); // Take only the top 10 scores
        setScores(sortedScores);
      } catch (error) {
        setError(error.message);
      } finally {
        setIsLoading(false);
      }
    };

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
      <h2>Player Scores</h2>
      <div style={{ padding: '10px' }}>
        {scores && scores.length > 0 ? (
          scores.map((score, index) => (
            <div key={index} style={{ marginBottom: '10px' }}>
              <div style={{ fontWeight: 'bold' }}>{score.gameObject ? score.gameObject.name : 'Unknown Game'}</div>
              <div style={{
                width: `${(score.score / 1) * 100}%`, // Assuming score is normalized [0,1]
                backgroundColor: 'royalblue',
                color: 'white',
                textAlign: 'right',
                padding: '5px',
                borderRadius: '5px',
                maxWidth: '100%'
              }}>
                {score.score.toFixed(2)}
              </div>
            </div>
          ))
        ) : (
          <div>No scores available</div>
        )}
      </div>
    </div>
  );
}

export default PlayerScores;
