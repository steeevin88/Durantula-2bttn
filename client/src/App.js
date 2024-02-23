import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import Signup from './components/signup/signup'; // Ensure path is correct
import Profile from './Profile'; // Ensure path is correct

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/signup" element={<Signup />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/" element={<Navigate replace to="/signup" />} />
      </Routes>
    </Router>
  );
}

export default App;
