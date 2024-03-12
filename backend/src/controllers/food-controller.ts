import { Request, Response } from "express";
import { getConnection } from "../utils/db";

// tutti i cibi
export async function allFood(req: Request, res: Response) {
    const connection = await getConnection();
    const [results] = await connection.execute(
      "SELECT idfood, nome, ingredienti, categoria, prezzo FROM food",
      []
    );
  
    res.json(results);
}