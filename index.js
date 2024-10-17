const express = require('express');
const app = express();
const port = 3000;

// Define a route for the homepage
app.get('/', (req, res) => {
  res.send('Sakshee is learning to play around with Github abd VS Code');
});

// Start the server
app.listen(port, () => {
  console.log(`App is running on http://localhost:${port}`);
});
