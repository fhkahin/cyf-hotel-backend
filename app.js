import express from 'express';
import fs from 'fs';
import path from 'path';
import apiRouter from './src/api.js';

const app = express();
const port = process.env.PORT || 3000;

// Debugging code to check if api.js exists
const apiPath = path.resolve('./src/api.js');
console.log(`Checking if api.js exists at: ${apiPath}`);
console.log(`Exists: ${fs.existsSync(apiPath)}`);

// Middleware
app.use(express.json());
app.use('/api', apiRouter);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
