const express = require('express');
const cors = require('cors');
const app = express();
app.use(cors());
app.get('/', (req, res) => {
  res.send('Hello from Node.js from server!');
});
app.listen(4001, '0.0.0.0', () => {
    console.log('Server is running on port 4001');
});
