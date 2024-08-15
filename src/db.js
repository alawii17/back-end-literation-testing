const { Pool } = require('pg');

const pool = new Pool({
  user: 'yYOUR DATABASE USER',
  host: 'YOUR DATABASE HOST',
  database: 'YOUR DATABASE NAME',
  password: 'YOUR DATABASE PASSWORD',
  port: YOUR DATABASE PORT,
});

module.exports = pool;
