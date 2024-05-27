Feature: Cadastro e Manutenção dos usuários
  As a usuário comum
  I want to criar, deletar e editar minha conta
  So that eu possa gerenciar minha minha conta

Scenario: Criar uma conta com sucesso
  Given o usuário está na página de "Cadastro" 
  And o email "einstein@mail.com" não está cadastrado no sistema
  And o apelido "Einstein" não está cadastrado no sistema
  And o telefone "6565656565" não está cadastrado no sistema
  When o usuário preenche o nome completo com "Albert Einstein", 
  And preenche o apelido com "Einstein", 
  And preenche o email com "einstein@mail.com",
  And preenche a senha com "Vks45500fff" que atende as políticas de senha,
  And preenche o número de celular com "6565656565",
  And preenche o gênero com "masculino", 
  And preenche o endereço com "Rua dos belos, nº 40"
  And o usuário escolhe se "cadastrar"
  Then o usuário é cadastrado no sistema
  And o usuário recebe uma mensagem "Cadastro concluído com sucesso"
  And o usuário está na página de "login"

Scenario: Criar uma conta sem e-mail
  Given o usuário está na página "Cadastro"
  When o usuário preenche o nome completo com "Albert Einstein"
  And preenche o apelido com "Einstein",
  And preenche a senha com "Khhhhhhh1" que atende as políticas de senha,
  And preenche o número de celular com "888888"
  And o usuário escolhe se "Cadastrar"
  Then é exibido uma mensagem de erro para o usuário
  And o usuário está na página de "login"
  And consegue escolher um novo e-mail

Scenario: Criar uma conta com e-mail existente
  Given o usuário está na página de "Cadastro"
  And o e-mail "einstein@mail.com" está cadastrado no sistema
  And o apelido "Edttn" não está cadastrado no sistema
  And o telefone "333444555" não está cadastrado no sistema
  When o usuário preenche o nome completo com "Ed Einstein"
  And preenche o apelido com "Edttn"
  And preenche o email com "einstein@mail.com"
  And preenche a senha com "Bsf4331bb" que atende as políticas de senha
  And preenche o número de celular com "55555555555" 
  And preenche o gênero com "masculino"
  And preenche o endereço com "Rua dos belos, nº 2"
  And o usuário escolhe se "Cadastrar"
  Then é exibido uma mensagem de erro para o usuário
