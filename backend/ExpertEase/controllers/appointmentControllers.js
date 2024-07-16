const Appointment = require("../models/appointment");
const asyncHandler = require("express-async-handler");

// Create a new appointment
const createAppointment = asyncHandler(async (req, res) => {
  const appointment = new Appointment(req.body);
  await appointment.save();
  res.status(201).json(appointment);
});

// Get all appointments
const getAppointments = asyncHandler(async (req, res) => {
  const appointments = await Appointment.find();
  res.json(appointments);
});

// Get single appointment
const getAppointment = asyncHandler(async (req, res) => {
  const appointment = await Appointment.findById(req.params.id);
  if (appointment) {
    res.json(appointment);
  } else {
    res.status(404);
    throw new Error("Appointment not found");
  }
});

// Update appointment
const updateAppointment = asyncHandler(async (req, res) => {
  const appointment = await Appointment.findById(req.params.id);
  if (appointment) {
    appointment.name = req.body.name || appointment.name;
    appointment.date = req.body.date || appointment.date;
    appointment.time = req.body.time || appointment.time;
    appointment.description = req.body.description || appointment.description;

    const updatedAppointment = await appointment.save();
    res.json(updatedAppointment);
  } else {
    res.status(404);
    throw new Error("Appointment not found");
  }
});

// Delete appointment
const deleteAppointment = asyncHandler(async (req, res) => {
  const appointment = await Appointment.findById(req.params.id);
  if (appointment) {
    await appointment.remove();
    res.json({ message: "Appointment removed" });
  } else {
    res.status(404);
    throw new Error("Appointment not found");
  }
});

module.exports = {
  createAppointment,
  getAppointments,
  getAppointment,
  updateAppointment,
  deleteAppointment,
};
