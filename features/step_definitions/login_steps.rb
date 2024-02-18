Dado("que acesso a página Login") do
  visit "http://parodify.qaninja.com.br/users/sign_in"

end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
    find("#user_email").set email # procura (find) o elemento ("#user_email") e busca (.set) na string (email)
    find("#user_password").set password # procura (find) o elemento ("#user_password") e busca (.set) na string (password)
    click_on "Log in" 
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  expect(login_alert).to eql expect_message # expect (esperar) é um recurso do rspec
  # espera que (except) a variavel em formato texto (message.text) seja igual (.to eql) a
  # string (except_message)
end
