Dado("login com {string} e senha {string}") do |email, password|
  goto_login
  login_with(email, password)
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click # Encontra o botão de pesquisar playlists
  # procura (find) o elemento ("a[href='/search/new']") e chama o evento de click (.click)

  find("img[src$='#{cat.downcase}.png']").click # Busca pela categoria desejada
  # procura (find) o elemento ("img[src$='#{cat.downcase}.png']") onde o #{cat. é a categoria,
  # o .downcase} é um metodo do ruby que deixa o texto em caixa baixa e chama o evento de click (.click)
end

Quando("toco a seguinte canção:") do |table|
  @parody = table.rows_hash # Converter tabela do formato pip para o formato naito vo ruby
  # salva em uma variavel (parody =) e converte a tabela do formato pip (table.) em objeto nativo
  # do ruby (rows_hash)

  find("a", text: @parody[:banda]).click # Encontra a banda
  # estratégia de escopo do capybara, onde procura (find) o elemento ("a",) pelo texto (text:),
  # usando a undertable (parody) com a informação que procura relacionada ([:banda]) e
  # chama o evento de click (.click)

  song = find(".song-item", text: @parody[:parodia]).click # Busca pela musica
  # salva em uma variavel (song = ) buscar (find) pela classe (".son-item",) que tenha o texto (text:),
  # usando a undertable (parody) com a informação que procura relacionada ([:parodia])
  # e chamar o evento de click (.click)

  song.find(".fa-play-circle").click # Toca a musica
  # Somente na classe que esta na variavel (song.) eu quero fazer uma busca (find) de outra classe
  # (".fa-play-circle") e chamar o evento click (.cluck). Para reproduzir minha musica.
end

Então("essa paródia deve ficar em modo reprodução") do
  song_play = find(".playing")
  # Eu salvo em uma variavel (song_play) e busco (find) o elemento que esta em execução (".playing")

  expect(song_play).to have_text @parody[:parodia]
  # espera que (except) a musica que esta sendo tocada da variavel (song_play) tenha o mesmo nome (.to have_text)
  # que o informado na minha tabela (parody[:parodia])
  # @parody = O "@" é utilizado antes da variavel quando você quer utilizar a informação da variavel em outras classes.

end
