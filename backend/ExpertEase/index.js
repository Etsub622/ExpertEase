require("dotenv").config();
const express = require("express");
const db = require("./db");
const chatRoutes = require("./routes/chatbotRoutes");
const clientRoutes = require("./routes/clientRoutes");
const expertRoutes = require("./routes/expertRoutes");
const appointmentRoutes = require("./routes/appointmentRoutes");
const reviewRoutes = require("./routes/reviewRoutes");

const app = express();
const port = 3000;

app.use(express.json());
app.use("/", chatRoutes);
app.use("/clients", clientRoutes);
app.use("/experts", expertRoutes);
app.use("/appointments", appointmentRoutes);
app.use("/reviews", reviewRoutes);

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
