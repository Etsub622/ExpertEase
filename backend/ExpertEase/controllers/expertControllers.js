const Expert = require("../models/expert");
const asyncHandler = require("express-async-handler");

// Create a new expert
const createExpert = asyncHandler(async (req, res) => {
  const expert = new Expert(req.body);
  await expert.save();
  res.status(201).json(expert);
});

// Get expert by ID with reviews
const getExpertById = asyncHandler(async (req, res) => {
  const expert = await Expert.findById(req.params.id)
    .populate("reviews")
    .exec();
  if (!expert) {
    res.status(404).json({ message: "Expert not found" });
  } else {
    res.json(expert);
  }
});

module.exports = {
  createExpert,
  getExpertById,
};
