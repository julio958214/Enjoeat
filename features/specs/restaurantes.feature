#language:pt
    @info_green_food
    Funcionalidade: Restaurantes do site

        Cenário: Visualização das infomações do restaurante Green Food
            Dado que o usuário acesse a sessão Restaurantes do site
            Quando ele procurar pelo restaurante "GREEN FOOD"
            Então ele visualiza as informações:
            |  categoria     |   Saudável                                                             |
            |  descricao     |   Comida saudável é no Green Food. Compramos barato, vendemos caro. ;) |
            |  horarios      |   Somente em horário de almoço, das 11h às 15h                         |