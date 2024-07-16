const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const ExpertSchema = new Schema({
  firstName: { type: String, required: true },
  lastName: { type: String, required: true },
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  phoneNumber: { type: String, required: true },
  expertiseType: { type: String, required: true },
  profilePicture: { type: String },
  bio: { type: String },
  rating: { type: Number },
  address: { type: String, required: true },
  languages: { type: [String], required: true },
  specializations: { type: [String], required: true },
  socialMedias: { type: Map, of: String },
  reviews: [{ type: Schema.Types.ObjectId, ref: "Review" }],
});

module.exports = mongoose.model("Expert", ExpertSchema);
