Fisico(#codInterno, nome, endereco, cpf, dt_nasc, sex)

Juridico(#codInterno, nome, endereco, cnpj)

TipoVeiculo(#codTipo, tempoLimpeza , kmMediaDiaria)

Passeio(#&codTipo, nroPassageiros, #codInternoAcess, tamano, portas)

Acessorios(#&codInternoAcess, descricao)

Carga(#&codTipo, cargaMax)

Revisões(#codRevisao, nome, descricao)

Veiculos(#placa, nrMot,r cor, kmAtual, chassi)

Filiais (#codFilial, nome)

Reserva(&dtHoraRetirada, dtHoraEntrega, &codInternoCliente, &codFilialRetirada, [&codFilialEntrega], &codigoTipo)

Aluguel(&dtHoraRetirada, &placa, cnh, dtVencimentoCNH, nomeMotorista)

Agendamento(&Placa, #dataHora, &codRevisão)

Classe(#&placa, &codigoTipo)

Manutenção(&codRevisao, &codigoTipo)