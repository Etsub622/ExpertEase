require("dotenv").config();
const express = require("express");
const db = require("./db");
const chatRoutes = require("./routes/chatbotRoutes");

const app = express();
const port = 3000;

app.use(express.json());
app.use("/", chatRoutes);

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
