import express from 'express';
import apiRouter from './api.js'; // Import the API router

const app = express();
const port = process.env.PORT || 3000;

// Use the API router
app.use('/api', apiRouter);

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
