require_relative "helpers" # Desta forma vc importa o modulo criado
World(Helpers) # Desta forma vc carrega o modulo fazendo com que os modulos dentro do modulo se tornem execuções nativas

require "capybara" # Importa o capybara para o ruby
require "capybara/cucumber" # faz o Capybara e Cucumber trabalhar juntos

require_relative "actions" # Desta forma vc importa o modulo criado
World(Actions) # Desta forma vc carrega o modulo fazendo com que os modulos dentro do modulo se tornem execuções nativas

Capybara.configure do |config| # Para fazer configurações no capybara
  config.default_driver = :selenium_chrome # Configura o driver do navegador
  config.default_max_wait_time = 10 # Altera o tempo de espera para 10 segundos
  config.app_host = "http://parodify.qaninja.com.br" # Define a URL padrão do projeto
end

require "allure-cucumber" # Importa os relatórios do Allure

AllureCucumber.configure do |config| # Para fazer configuração do AlurreCucumber
  config.results_directory = "/logs" # Informa a pasta onde gera os relatórios
  config.clean_results_directory = true # True limpa, false não limpa
end
