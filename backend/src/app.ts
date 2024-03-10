import express from "express";
import history from "connect-history-api-fallback";
import bodyParser from "body-parser";

import drinkRouter from "./routes/drink-router";

const app = express();

app.use(history());

app.use(bodyParser.json());

app.use(drinkRouter);

app.use(history());
app.use(express.static("dist-frontend"));

app.use((_, res) => {
  res.setHeader("Content-Type", "text/plain");
  res.status(404).send("Ops... Pagina non trovata");
});
  
const port = 3000;
app.listen(port, () => console.log(`Listening on http://localhost:${port}`));