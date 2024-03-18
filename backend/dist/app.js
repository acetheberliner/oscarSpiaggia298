"use strict";
const express = require("express");
const path = require("path");
const __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
const connect_history_api_fallback_1 = __importDefault(require("connect-history-api-fallback"));
const body_parser_1 = __importDefault(require("body-parser"));
const drink_router_1 = __importDefault(require("./routes/drink-router"));
const food_router_1 = __importDefault(require("./routes/food-router"));
const bar_router_1 = __importDefault(require("./routes/bar-router"));
const wine_router_1 = __importDefault(require("./routes/wine-router"));

const app = express();

app.use((0, connect_history_api_fallback_1.default)());
app.use(body_parser_1.default.json());
app.use(drink_router_1.default);
app.use(food_router_1.default);
app.use(bar_router_1.default);
app.use(wine_router_1.default);

// Serve la tua app frontend statica
// Serve i file statici, inclusi i file JavaScript, dalla cartella "dist-frontend"
app.use(express.static(path.join(__dirname, 'dist-frontend')));


// Quando nessun'altra route gestisce la richiesta, reindirizza a Home.vue
app.use((_, res) => {
    res.sendFile(path.join(__dirname, 'dist-frontend', './index.html'));
});

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on http://localhost:${port}`));
