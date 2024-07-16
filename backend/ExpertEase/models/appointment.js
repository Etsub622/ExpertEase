const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const AppointmentSchema = new Schema({
  clientId: { type: Schema.Types.ObjectId, ref: "Client", required: true },
  expertId: { type: Schema.Types.ObjectId, ref: "Expert", required: true },
  appointmentDate: { type: Date, required: true },
  startTime: { type: String, required: true },
  endTime: { type: String, required: true },
  status: {
    type: String,
    enum: ["Pending", "Confirmed", "Completed", "Cancelled"],
    required: true,
  },
  rating: { type: Number },
});

module.exports = mongoose.model("Appointment", AppointmentSchema);
