const express = require("express");
const router = express.Router();
const {
  createExpert,
  getExpertById,
} = require("../controllers/expertControllers");

router.post("/", createExpert);
router.get("/:id", getExpertById);

module.exports = router;
