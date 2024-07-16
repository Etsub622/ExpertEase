const express = require("express");
const router = express.Router();

const {
  createAppointment,
  getAppointments,
  getAppointment,
  updateAppointment,
  deleteAppointment,
} = require("../controllers/appointmentControllers");

router.get("/:id", getAppointment);
router.put("/:id", updateAppointment);
router.delete("/:id", deleteAppointment);
router.post("/", createAppointment).get("/", getAppointments);

module.exports = router;
