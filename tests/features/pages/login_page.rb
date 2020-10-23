
class LoginPage < SitePrism::Page
  set_url '/'

  def login
    fill_in 'login', with: 'brunoinnacio@gmail.com'
    fill_in 'password', with: 'bli260653'
    click_button 'Entrar'
  end
end
