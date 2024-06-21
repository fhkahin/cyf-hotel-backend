import express from 'express';
import apiRouter from './src/api.js';

const app = express();
const port = process.env.PORT || 3000;

app.use('/api', apiRouter);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});