import express from 'express';
import pkg from 'pg';
import cors from 'cors';
import dotenv from 'dotenv';

dotenv.config();

const { Pool } = pkg;
const router = express.Router();

const pool = new Pool({
  user: process.env.RDS_USERNAME,
  password: process.env.RDS_PASSWORD,
  host: process.env.RDS_HOST,
  database: process.env.RDS_DATABASE,
  port: process.env.RDS_PORT || 5432,
});

router.use(express.json());
router.use(cors());

router.get('/rooms', async (req, res) => {
  try {
    const query = 'SELECT * FROM rooms';
    const { rows } = await pool.query(query);
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal server error' });
  }
});

export default router;