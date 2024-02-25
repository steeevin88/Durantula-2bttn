import React from 'react';
import { useNavigate } from 'react-router-dom';
import PlayerScores from './components/results/results.js'

function Profile() {
  const navigate = useNavigate();

  const handleBack = () => {
    navigate(-1); // Goes back one step in the history stack
  };

  function getCookie(cookieName) {
    const cookies = document.cookie.split(';');
    for (const cookie of cookies) {
      const [name, value] = cookie.trim().split('=');
      if (name === cookieName) {
        return decodeURIComponent(value);
      }
    }
    return null; // Return null if the cookie is not found
  }

  return (
    <div style={{
      paddingTop: "75px",
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center',
      height: '100vh',
      width: '100vw', // Ensure the div takes full width
      position: 'fixed', // Keep the div fixed during scrolling
      top: '0', // Align to the top
      left: '0', // Align to the left
      flexDirection: 'column',
      textAlign: 'center',
      overflowY: 'scroll', // Enable scrolling within the div if content overflows
    }}>
      <h1>Welcome to your profile!</h1>
      <br/>
      <PlayerScores player_id={getCookie('userId')} />
      <button onClick={handleBack}>Go Back</button>
    </div>
  );
}

export default Profile;
