import { Router } from "express";
import * as drinkController from "../controllers/drink-controller";

const router: Router = Router();

router.get("/api/drink", drinkController.allDrinks);

export default router;