Feature: Cadastro e Manutenção dos usuários
  As a usuário comum
  I want to criar, deletar e editar minha conta
  So that eu possa gerenciar minha minha conta

Scenario: Criar uma conta com sucesso
  Given o usuário está na página de "Cadastro" 
  And o email "einstein@mail.com" não está cadastrado no sistema
  And o apelido "Einstein" não está cadastrado no sistema
  And o telefone "123456777" não está cadastrado no sistema
  When o usuário preenche o nome completo com "Albert Einstein", 
  And preenche o apelido com "Einstein", 
  And preenche o email com "einstein@mail.com",
  And preenche a senha com "Vks45500fff" que atende as políticas de senha,
  And preenche o número de celular com "123456777",
  And preenche o gênero com "masculino", 
  And preenche o endereço com "Rua dos belos, nº 0"
  And o usuário escolhe se "cadastrar"
  Then o usuário é cadastrado no sistema
  And o usuário recebe uma mensagem "Cadastro concluído com sucesso"
  And o usuário está na página de "login"
  And consegue escolher um novo e-mail
