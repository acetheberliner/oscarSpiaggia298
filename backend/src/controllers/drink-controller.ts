import { Request, Response } from "express";
import { getConnection } from "../utils/db";

// tutti i drink
export async function allDrinks(req: Request, res: Response) {
    const connection = await getConnection();
    const [results] = await connection.execute(
      "SELECT iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo, img FROM drink",
      []
    );
  
    res.json(results);
}