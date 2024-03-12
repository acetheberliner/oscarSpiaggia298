import express from "express";
import history from "connect-history-api-fallback";
import bodyParser from "body-parser";

import drinkRouter from "./routes/drink-router";
import foodRouter from "./routes/food-router";
import barRouter from "./routes/bar-router";
import wineRouter from "./routes/wine-router";

const app = express();

app.use(history());

app.use(bodyParser.json());

app.use(drinkRouter);
app.use(foodRouter);
app.use(barRouter);
app.use(wineRouter);

app.use(history());
app.use(express.static("dist-frontend"));

app.use((_, res) => {
  res.setHeader("Content-Type", "text/plain");
  res.status(404).send("Ops... Pagina non trovata");
});
  
const port = 3000;
app.listen(port, () => console.log(`Listening on http://localhost:${port}`));