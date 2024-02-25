import React, { useState } from 'react';
import { v4 as uuidv4 } from 'uuid';

function Signup() {
  const [username, setUsername] = useState('');
  const userId = uuidv4();

  const getGameUrl = async () => {
    try {
      const response = await fetch('http://localhost:3001/generate-game-url', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            id: userId,
        }),
      });
      const {gameUrl} = await response.json();
      console.log(gameUrl)
      if (gameUrl) {
        window.location.href = gameUrl; // Redirect
      } else {
        console.error('Game URL not found.');
      }
    } catch (error) {
      console.error('Failed to fetch game URL:', error);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const data = {
      id: userId,
      name: username,
    };
  
    try {
      const response = await fetch('http://localhost:3001/create-user', {
        method: 'POST',
        headers: {'Content-Type': 'application/json',},
        body: JSON.stringify(data),
      });
  
      if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
      }
  
      const responseData = await response.json();
      console.log('Response:', responseData);

      document.cookie = `userId=${userId}`;
  
      // Call getGameUrl to redirect the user to their game instance
      getGameUrl();
    } catch (error) {
      console.error('Error:', error);
    }
  };
  

  return (
    <div className="" style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh', flexDirection: 'column' }}>
      <h1 className="">Create a new account</h1>
      <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '10px' }}>
        <div>
          <label>Username:</label>
          <input type="text" value={username} onChange={(e) => setUsername(e.target.value)} required />
        </div>
        <button type="submit">Sign Up</button>
      </form>
    </div>
  );
}

export default Signup;
