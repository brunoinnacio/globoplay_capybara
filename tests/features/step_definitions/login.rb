Dado('que eu tenha um usuario') do |table|
  @acessar_page = LoginPage.new
  @acessar_page.load
end

Quando('eu faco login') do
  find('.toolbar__user-area').hover
  find(:id, "login-button-Entrar").click

  within_frame(find('iframe')) do
    @acessar_page.login
  end
end

Então('eu verifico se estou logado') do
  expect(page).to have_current_path('https://globoplay.globo.com/', url: true)
  find('.toolbar__user-area').hover
  expect(page).to have_content('Bruno Innacio')
end
