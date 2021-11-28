#language:pt
    @all_restaurant_services
    Funcionalidade: Restaurantes do site
    Eu como usuário devo poder interagir com todos os restaurantes da plataforma.

        @green_food_restaurant
        Cenário: Visualização das infomações do restaurante Green Food
            Dado que o usuário acesse a sessão restaurantes do site
            Quando ele procurar pelo restaurante "GREEN FOOD"
            Então ele visualiza as informações:
            |  categoria     |   Saudável                                                             |
            |  descricao     |   Comida saudável é no Green Food. Compramos barato, vendemos caro. ;) |
            |  horarios      |   Somente em horário de almoço, das 11h às 15h                         |

        @coffe_corner_restaurant
        Cenario: Verificar lista de itens no menu da cafeteria "Coffee Corner"
            Dado que o usuário acesse a sessão restaurantes do site
            Quando ele selecionar a cafeteria "COFFEE CORNER"
            Então ele visualiza os itens:
            | CAPPUCCINO COM CHANTILLY | Tradicional cappuccino com chantilly                          | R$ 9,90SUPER ESPRESO |
            | SUPER ESPRESO            | Café espresso duplo.                                          |  R$ 12,50            |
            |  STARBUCKS COPYCAT       | O mais pedido da casa. O verdadeiro café americano pura água. |  R$ 15,60            |