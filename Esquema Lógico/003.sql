Pessoas(#codCliente, nome)

Fisica(#&codCliente, CPF)

Juridica(#&codCliente, CNPJ, razaoSocial)

Produtos(#codProduto, nome, qtdDisponivel, peso, altura, largura, profundidade, unidMedida, precoUnidCompra, precoUnidVenda)

Empresas(#CNPJ, razaoSocial)

Compras(#&CNPJ, #&codProduto, #tdHoraEmissao, qnt, [dtPrevEntrega])

Venda(#&codCliente, #&codProduto, #dtHoraEmissao, qtd)