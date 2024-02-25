require('dotenv').config()
const express = require("express");
const app = express();
const PORT = process.env.PORT || 3001;
const { TwoBttnsApi } = require("@2bttns/sdk");

const bodyParser = require('body-parser');
app.use(bodyParser.json());

const cors = require("cors");
app.use(cors());

const twobttns = new TwoBttnsApi({
  appId: process.env.TWOBTTNS_APP_ID,
  secret: process.env.TWOBTTNS_APPSECRET,
  url: process.env.TWOBTTNS_CONSOLE
});

app.get('/', (req, res) => {
  res.send({
    description: 'server is running',
  });
});

app.post('/create-user', async (req, res) => {
  try {
    const { data } = await twobttns.callApi("/players/create", "post", {
      "id": req.body.id,
      "name": req.body.name,
    });
    console.log(data)
    res.send({
      data
    })
  } catch (error) {
    console.error('Error creating user: ', error);
    res.status(500).send('Error creating user');
  }
})

app.post('/generate-game-url', async (req, res) => {
  try {
    const url = twobttns.generatePlayUrl({
      gameId: "book_preferences_game",
      playerId: req.body.id,
      numItems: 5,
      callbackUrl: "http://localhost:3000/profile",
    });
    res.send({ gameUrl: url });
  } catch (error) {
    console.error('Error generating game URL:', error);
    res.status(500).send('Error generating game URL');
  }
});

app.get('/scores', async (req, res) => {
  const { player_id } = req.query
  console.log(player_id)
  try {
    const { data } = await twobttns.callApi("/games/getPlayerScores", "get", {
      player_id: player_id,
      game_id: "book_preferences_game",
      include_game_objects: true
    });
    console.log(data)
    res.send({
      data
    })
  } catch (error) {
    console.error('Error retrieving game results:', error);
  }
})

app.listen(PORT, () => {
  console.log(`server is running on port ${PORT}`);
});
