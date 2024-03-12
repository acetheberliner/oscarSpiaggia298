export interface Drink {
    iddrink: number
    nome: string
    ingredienti: string
    garnish: string
    metodo: string
    categoria: string
    sapore: string
    prezzo: number
}

export interface Food {
    idfood: number
    nome: string
    ingredienti: string
    categoria: string
    prezzo: number
}

export interface Bar {
    idbar: number
    nome: string
    categoria: string
    prezzo: number   
}

export interface Wine {
    idwine: number
    nome: string
    colore: string
    gusto: string
    grad: number
    prezzo: number
}