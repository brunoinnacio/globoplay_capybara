# class para testar checkbox
class LoginPage < SitePrism::Page
  set_url '/'

  element :campo_email, 'login'
  element :campo_senha, 'password'
  element :botao_entrar, 'Entrar'


  def login (email,senha)
    campo_email.set email
    campo_senha.set senha
    #botao_entrar.click
   
  end
end
