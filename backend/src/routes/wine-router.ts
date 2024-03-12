import { Router } from "express";
import * as wineController from "../controllers/wine-controller";

const router: Router = Router();

router.get("/api/wine", wineController.allWine);

export default router;
