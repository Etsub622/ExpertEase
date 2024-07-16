const Review = require("../models/review");
const Expert = require("../models/expert");
const asyncHandler = require("express-async-handler");

// Create a new review
const createReview = asyncHandler(async (req, res) => {
  const review = new Review(req.body);
  await review.save();
  await Expert.findByIdAndUpdate(req.body.expertId, {
    $push: { reviews: review._id },
  });
  res.status(201).json(review);
});

module.exports = {
  createReview,
};
