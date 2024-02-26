require("dotenv").config();
const express = require("express");
const app = express();
const PORT = process.env.PORT || 3001;
const { TwoBttnsApi } = require("@2bttns/sdk");

const bodyParser = require("body-parser");
app.use(bodyParser.json());

const cors = require("cors");
app.use(cors());

const twobttns = new TwoBttnsApi({
  appId: process.env.TWOBTTNS_APP_ID,
  secret: process.env.TWOBTTNS_APPSECRET,
  url: process.env.TWOBTTNS_CONSOLE,
});

app.get("/", (req, res) => {
  res.send({
    description: "server is running",
  });
});

app.post("/create-user", async (req, res) => {
  try {
    const { data } = await twobttns.callApi("/players/create", "post", {
      id: req.body.id,
      name: req.body.name,
    });
    console.log(data);
    res.send({
      data,
    });
  } catch (error) {
    console.error("Error creating user: ", error);
    res.status(500).send("Error creating user");
  }
});

app.post("/generate-game-url", async (req, res) => {
  try {
    const url = twobttns.generatePlayUrl({
      gameId: "book_preferences_game",
      playerId: req.body.id,
      numItems: 14,
      callbackUrl: "http://localhost:3000/profile",
    });
    res.send({ gameUrl: url });
  } catch (error) {
    console.error("Error generating game URL:", error);
    res.status(500).send("Error generating game URL");
  }
});

//testing
app.get("/scores", async (req, res) => {
  let highestScore = -Infinity; // Start with the lowest possible number
  let highestScoreGameObjectId = null;
  let highestScoreDetails = null;
  const { player_id } = req.query;
  console.log(player_id);
  try {
    const { data } = await twobttns.callApi("/games/getPlayerScores", "get", {
      player_id: player_id,
      game_id: "book_preferences_game",
      include_game_objects: true,
    });
    console.log(data);

    // Assuming 'data' contains the 'playerScores' array directly
    const playerScores = data.playerScores;

    // Extract and print gameObjectId for each score
    playerScores.forEach((score) => {
      if (score.score > highestScore) {
        highestScore = score.score; // Update highest score
        highestScoreGameObjectId = score.gameObjectId; // Update gameObjectId of the highest score
        highestScoreDetails = score.gameObject.name;
      }
    });

    // After finding the highest score, print its gameObjectId

    if (highestScoreDetails) {
      console.log(
        `Details of the game object with the highest score:`,
        highestScoreDetails
      );
    } else {
      console.log("No scores found.");
    }

    res.send({
      data,
      highestScoreDetails,
      highestScoreGameObjectId,
    });
  } catch (error) {
    console.error("Error retrieving game results:", error);
  }
});

//test
app.get("/fetch-openlibrary", async (req, res) => {
  const genre = req.query.genre; // Pass the genre as a query parameter to your endpoint
  const url = `https://openlibrary.org/subjects/${encodeURIComponent(
    genre
  )}.json?details=false`;

  try {
    const response = await fetch(url);
    const data = await response.json();
    res.send(data);
  } catch (error) {
    res.status(500).send("Error fetching data from Open Library");
  }
});

//working

app.listen(PORT, () => {
  console.log(`server is running on port ${PORT}`);
});
