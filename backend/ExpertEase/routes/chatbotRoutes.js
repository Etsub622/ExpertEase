const express = require("express");
const chatController = require("../controllers/chatbotControllers");

const router = express.Router();

router.get("/", chatController.getHome);
router.post("/chat", chatController.postChat);

module.exports = router;
