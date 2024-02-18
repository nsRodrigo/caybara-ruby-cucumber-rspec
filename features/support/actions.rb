module Actions
  def goto_login
    visit "/" # visito (visit) a pagina ("http://parodify.qaninja.com.br")
    click_on "Login" # clica (click_on) no botão ("Login")
  end

  def login_with(email, password)
    find("#user_email").set email # procura (find) o elemento ("#user_email") e busca (.set) na string (email)
    find("#user_password").set password # procura (find) o elemento ("#user_password") e busca (.set) na string (password)
    click_on "Log in" # clica (click_on) no botão ("Log in")
  end

  def goto_cadastro
    visit "/" # visito (visit) a pagina ("http://parodify.qaninja.com.br")
    click_on "EXPERIMENTE AGORA" # clica (click_on) no botão ("EXPERIMENTE AGORA")
  end

  def login_alert
    return find(".message .message-body").text # retorna (return) a busca (find) o elemento (".message .message-body") como texto (.text)
  end

  def cadastro_alert
    return find(".message p").text # retorna (return) a busca (find) o elemento (".message p") como texto (.text)
  end
end
