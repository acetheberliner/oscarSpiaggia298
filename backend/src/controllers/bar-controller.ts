import { Request, Response } from "express";
import { getConnection } from "../utils/db";

// tutti i drink
export async function allBar(req: Request, res: Response) {
    const connection = await getConnection();
    const [results] = await connection.execute(
      "SELECT idbar, nome, categoria,prezzo FROM bar",
      []
    );
  
    res.json(results);
}