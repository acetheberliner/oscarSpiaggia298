"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const connect_history_api_fallback_1 = __importDefault(require("connect-history-api-fallback"));
const body_parser_1 = __importDefault(require("body-parser"));
const drink_router_1 = __importDefault(require("./routes/drink-router"));
const food_router_1 = __importDefault(require("./routes/food-router"));
const bar_router_1 = __importDefault(require("./routes/bar-router"));
const wine_router_1 = __importDefault(require("./routes/wine-router"));
const app = (0, express_1.default)();
app.use((0, connect_history_api_fallback_1.default)());
app.use(body_parser_1.default.json());
app.use(drink_router_1.default);
app.use(food_router_1.default);
app.use(bar_router_1.default);
app.use(wine_router_1.default);
app.use((0, connect_history_api_fallback_1.default)());
app.use(express_1.default.static("dist-frontend"));
app.use((_, res) => {
    res.setHeader("Content-Type", "text/plain");
    res.status(404).send("Ops... Pagina non trovata");
});
const port = 3000;
app.listen(port, () => console.log(`Listening on http://localhost:${port}`));
