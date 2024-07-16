const Message = require("../models/Message");
const axios = require("axios");

exports.getHome = (req, res) => {
  res.send("hello world!");
};

exports.postChat = async (req, res) => {
  const { user, message } = req.body;

  const userMessage = new Message({ user, message });
  await userMessage.save();

  try {
    const response = await axios.post(
      "https://api-inference.huggingface.co/models/microsoft/DialoGPT-medium",
      {
        inputs: message,
      },
      {
        headers: {
          Authorization: `Bearer ${process.env.HUGGINGFACE_API_KEY}`,
          "Content-Type": "application/json",
        },
      }
    );

    // Log the entire response for debugging
    console.log("Hugging Face API Response:", response.data);

    const botMessage = response.data.generated_text;

    const botResponse = new Message({ user: "bot", message: botMessage });
    await botResponse.save();

    res.json({ message: botMessage });
  } catch (error) {
    if (error.response && error.response.data) {
      console.error(
        "Error calling Hugging Face API:",
        JSON.stringify(error.response.data, null, 2)
      );
      res
        .status(500)
        .send(
          `Error calling Hugging Face API: ${JSON.stringify(
            error.response.data,
            null,
            2
          )}`
        );
    } else {
      console.error("Unexpected error:", error);
      res.status(500).send("Unexpected error occurred");
    }
  }
};
