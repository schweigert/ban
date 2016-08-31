Reservas(#codigo, nomePass, prazoValidade, emitido)
Trechos(#idTrecho)
Aeroportos(#sigla, nome, capacidade)
Cidades(#codCidade, estado, pais, clima, nome)
Voos(#codVoo, ciaAerea, diaSemana)
Aeronaves(#codAeronave, modelo, autorizacao, capacidade, ano)
Assentos(#idAssento, classe)

Escalas(&codReserva, &idTrecho, &idAssento)
Origem(&idTrecho, &sigla, horaPartida)
Destino(&idTrecho, &sigla, horaChegada)

Itinerários(&idTrecho, &codVoo, &codAeronave)

Layout(&codAeronave, &idAssento)