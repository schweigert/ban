Categoria(#idCat, nome) Alimentos(#idAlimento, nome, unidadeMedida, caloriasPorUnidade, [&idCategorias])

Dietas(#idDieta), responsavelTecnico, nome)

Pratos(#idPrato, nome, dificuldade)

Nutrientes(#idNutriente, nome)

RestricoesAlimentares(#idRestricao, descricao)

Proibidos(#&idRestricao, #&idPrato)

ConteudoNutricional(#&idNutriente, #&idPrato)

MenuPrato(#dia, horario, #&idPrato, #&idDieta)

Composicao(quantidade, #&idPrato, #&idAlimento)

Intolerancias(#&idRestricao, #&idAlimento)

MenuNatural(#dia,horario, quantidade, instrucaoConsumo , #&idDieta, #&idAlimento)

Substituicao(#&idAlimento1, #&idAlimento2)
