import { Router } from "express";
import * as foodController from "../controllers/food-controller";

const router: Router = Router();

router.get("/api/food", foodController.allFood);

export default router;
