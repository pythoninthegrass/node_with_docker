import express from "express";

const app = express();
const PORT = 8000;

app.get("/", async function (req, res) {
  res.send("Hello World!");
});

app.listen(PORT, async function () {
  console.log(`App running on ${PORT}`);
});
