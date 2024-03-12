import { Request, Response } from "express";
import { getConnection } from "../utils/db";

// tutti i drink
export async function allWine(req: Request, res: Response) {
    const connection = await getConnection();
    const [results] = await connection.execute(
      "SELECT idwine, nome, colore, gusto, grad, prezzo FROM wine",
      []
    );
  
    res.json(results);
}