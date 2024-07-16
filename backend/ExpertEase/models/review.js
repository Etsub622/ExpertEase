const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const ReviewSchema = new Schema({
  expertId: { type: Schema.Types.ObjectId, ref: "Expert", required: true },
  clientId: { type: Schema.Types.ObjectId, ref: "Client", required: true },
  rating: { type: Number, required: true },
  comment: { type: String, required: true },
  createdAt: { type: Date, default: Date.now },
});

module.exports = mongoose.model("Review", ReviewSchema);
