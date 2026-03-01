// setup nodejs
// yarn add express
// yarn install
// dev code....
// node server.js => yarn start

import express from 'express';
import { PrismaClient } from '@prisma/client';
import dotenv from "dotenv";
dotenv.config();

const app = express();

app.listen(8088);

const prisma = new PrismaClient();

app.get("/get-product", async (req, res) => {
  res.send(await prisma.products.findMany());
})

// GET get-hello
app.get("/get-hello", (req, res) => {
  res.send("Hello world !!")
})

// GET get-node
app.get("/get-node", (req, res) => {
  res.send(" NODEJS COME HERE !!")
})
