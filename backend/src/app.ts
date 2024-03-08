import express from "express";
import history from "connect-history-api-fallback";

const app = express();
app.use(history());

app.use((_, res) => {
    res.setHeader("Content-Type", "text/plain");
    res.status(404).send("Ops... Pagina non trovata");
  });
  
  const port = 3000;
  app.listen(port, () => console.log(`Listening on http://localhost:${port}`));