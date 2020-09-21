Dado('que estou na Paginal Inicial') do
   visit('https://www.fleury.com.br/')
    end
  
  E ('Clico em unidade') do
    click_link_or_button 'Unidades'
    end
  
  Quando('Seleciono as Facilidades') do

  page.execute_script "window.scrollBy(0,1000)"

  #Clicando no filtro para expandir as Facilidades
  find(:id, "checkoox-select-facilities").click
 
  #Selecionando Bicicletario
  find( "label[for='_Bicicletário e vaga verde'] ", visible: false).click
 
    #Selecionando Vacinação
    find( "label[for='_Vacinação'] ", visible: false).click
    
    #Selecionando Atendimento aos domingos
    find( "label[for='_Atendimento aos domingos'] ", visible: false).click
   end
  
  E('clico em Ver detalhar') do
    click_link_or_button 'Ver detalhes'
  end
  
  Então('Deverá aparecer República do Líbano I') do
    expect(page).to have_current_path('https://www.fleury.com.br/unidades/republica-do-libano-i', url: true)
    expect(page).to have_content('República do Líbano I')
    end
  