Dado('que eu tenha um usuario') do |table|
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  @login = LoginPage.new
  @login.load
end

Quando('eu faco login') do
  find('.toolbar__user-area').hover
  find(:id, "login-button-Entrar").click

  within_frame(find('iframe')) do
    fill_in 'login', with: @email
    fill_in 'password', with: @senha
    click_button 'Entrar'
  end
end

Então('eu verifico se estou logado') do
  expect(page).to have_current_path('https://globoplay.globo.com/', url: true)
  find('.toolbar__user-area').hover
  expect(page).to have_content('Bruno Innacio')
  
end
