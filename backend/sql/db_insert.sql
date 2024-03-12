USE oscarspiaggia;


INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (1, 'Aperol Spritz', 'Prosecco, Aperol, Soda', 'Arancia', 'Build', 'Aperitivo', 'Leggero', '7.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (2, 'Negroni', 'Gin, Vermouth Rosso, Campari', 'Fetta di arancia', 'Rimestare', 'Aperitivo', 'Ambrato', '8.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (3, 'Mojito', 'Rum bianco, Lime, Menta, Zucchero, Soda', 'Foglia di menta', 'Build', 'Cocktail', 'Rinfrescante', '9.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (4, 'Martini Dry', 'Gin, Vermouth secco', 'Oliva', 'Stir', 'Cocktail', 'Secco', '10.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (5, 'Margarita', 'Tequila, Triple sec, Succo di lime', 'Fetta di lime', 'Shake', 'Cocktail', 'Acido', '9.5');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (6, 'Piña Colada', 'Rum bianco, Succo di ananas, Latte di cocco', 'Fetta di ananas e ciliegia', 'Blend', 'Cocktail', 'Dolce', '8.5');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (7, 'Old Fashioned', 'Bourbon, Zucchero, Amaro, Angostura bitters', 'Arancia e ciliegia', 'Muddle', 'Aperitivo', 'Robusto', '11.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (8, 'Cosmopolitan', 'Vodka, Triple sec, Succo di lime, Succo di mirtillo rosso', 'Fetta di lime', 'Shake', 'Cocktail', 'Acido', '10.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (9, 'Caipirinha', 'Cachaça, Lime, Zucchero', 'Fetta di lime', 'Muddle', 'Cocktail', 'Rinfrescante', '9.0');
INSERT INTO drink (iddrink, nome, ingredienti, garnish, metodo, categoria, sapore, prezzo) VALUES (10, 'Moscow Mule', 'Vodka, Succo di lime, Ginger beer', 'Fetta di lime e fettine di zenzero', 'Build', 'Aperitivo', 'Speziato', '8.5');


INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (1, 'Prosecco DOC', 'bianco', 'spumante', 11.5, 10);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (2, 'Barolo DOCG', 'rosso', 'secco', 14.5, 25);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (3, 'Chianti Classico DOCG', 'rosso', 'secco', 13, 15);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (4, 'Brunello di Montalcino DOCG', 'rosso', 'secco', 14, 30);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (5, 'Amarone della Valpolicella DOCG', 'rosso', 'secco', 15, 40);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (6, 'Sassicaia DOC', 'rosso', 'secco', 14, 50);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (7, 'Tignanello DOCG', 'rosso', 'secco', 13.5, 45);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (8, 'Gewürztraminer DOC', 'bianco', 'aromatico', 12, 12);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (9, 'Riesling DOC', 'bianco', 'secco', 11, 10);
INSERT INTO wine (idwine, nome, colore, gusto, grad, prezzo) VALUES (10, 'Vermentino DOC', 'bianco', 'secco', 13, 15);


INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (1, 'Panino', 'Pane, prosciutto', 'Panini', 5);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (2, 'Pizza Margherita', 'Pomodoro, mozzarella', 'Pizze', 7);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (3, 'Spaghetti al pomodoro', 'Pomodoro, basilico, olio di oliva', 'Primi piatti', 6);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (4, 'Insalata verde', 'Lattuga, pomodori, cetrioli', 'Insalate', 4);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (5, 'Pollo arrosto', 'Pollo, patate', 'Secondi piatti', 8);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (6, 'Salmone al forno', 'Salmone, limone, erbe aromatiche', 'Secondi piatti', 10);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (7, 'Tiramisù', 'Caffè, mascarpone, savoiardi', 'Dolci', 5);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (8, 'Gelato alla fragola', 'Latte, panna, fragole', 'Dolci', 3);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (9, 'Zuppa', 'Carote', 'Frutta', 1);
INSERT INTO food (idfood, nome, ingredienti, categoria, prezzo) VALUES (10, 'Insalata di mare', 'Pesce', 'Verdura', 1);


INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (1, 'Caffè corto', 'Caffetteria', '1.3');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (2, 'Cappuccino', 'Caffetteria', '1.5');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (3, 'Latte macchiato', 'Caffetteria', '1.7');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (4, 'Espresso macchiato', 'Caffetteria', '1.4');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (5, 'Americano', 'Caffetteria', '1.2');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (6, 'Caffè lungo', 'Caffetteria', '1.1');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (7, 'Thé freddo', 'Bevande analcoliche', '2.0');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (8, 'Spremuta di arancia', 'Bevande analcoliche', '2.5');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (9, 'Acqua naturale', 'Bevande analcoliche', '1.0');
INSERT INTO bar (idbar, nome, categoria, prezzo) VALUES (10, 'Birra piccola', 'Bevande alcoliche', '4.0');
