const Client = require("../models/client");
const asyncHandler = require("express-async-handler");

// Create a new client
const createClient = asyncHandler(async (req, res) => {
  const client = new Client(req.body);
  await client.save();
  res.status(201).json(client);
});
// Get all clients
const getClients = asyncHandler(async (req, res) => {
  const clients = await Client.find();
  res.json(clients);
});

// Get a single client
const getClient = asyncHandler(async (req, res) => {
  const client = await Client.findById(req.params.id);
  if (client) {
    res.json(client);
  } else {
    res.status(404);
    throw new Error("Client not found");
  }
});

// Update a client
const updateClient = asyncHandler(async (req, res) => {
  const client = await Client.findById(req.params.id);
  if (client) {
    client.name = req.body.name || client.name;
    client.email = req.body.email || client.email;
    client.phone = req.body.phone || client.phone;
    await client.save();
    res.json(client);
  } else {
    res.status(404);
    throw new Error("Client not found");
  }
});

// Delete a client
const deleteClient = asyncHandler(async (req, res) => {
  const client = await Client.findById(req.params.id);
  if (client) {
    await client.remove();
    res.json({ message: "Client removed" });
  } else {
    res.status(404);
    throw new Error("Client not found");
  }
});

module.exports = {
  createClient,
  getClients,
  getClient,
  updateClient,
  deleteClient,
};
