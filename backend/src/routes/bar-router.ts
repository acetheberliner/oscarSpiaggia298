import { Router } from "express";
import * as baarController from "../controllers/bar-controller";

const router: Router = Router();

router.get("/api/bar", baarController.allBar);

export default router;
