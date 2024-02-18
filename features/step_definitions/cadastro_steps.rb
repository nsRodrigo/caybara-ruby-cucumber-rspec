Dado("que acesso a página de cadastro") do
  goto_cadastro
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash # Converte a tabela no formato pip para um objeto nativo do ruby
  delorean user[:email]
  find("input[name*=email]").set user[:email]
  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:senha_confirma]
  click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard" # expect (esperar) é um recurso do rspec # .to have_css = ter css
  # espera (expect) que na pagina (page).to encontre ou tenha um elemento css (have_css) com o nome (".dashboard")
end

Então("devo ver a mensagem: {string}") do |expect_message| # string
  expect(cadastro_alert).to eql expect_message
  # espera (expect) que na pagina informada na action (cadastro_alert).to encontre o text igual (eql) a mensagem na string (expext_message)
end

Quando("acesso a página de cadastro") do
  steps %(
     Dado que acesso a página de cadastro  
  )
end

Então("deve exibir o seguinte css: {string}") do |expect_css|
  expect(page).to have_css expect_css
  # espera (expect) que na pagina (page).to encontre ou tenha um elemento css (have_css) com o nome informado na string (except_css)
end
