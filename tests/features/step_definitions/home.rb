Dado('que estou na Paginal Inicial') do
  @unide = UnidePage.new
  @unide.load
end

E('Clico em unidade') { click_link_or_button 'Unidades' }

Quando('Seleciono as Facilidades') do
  page.execute_script 'window.scrollBy(0,1000)'

  @unide.checkbox
end

E('clico em Ver detalhar') { click_link_or_button 'Ver detalhes' }

Então('Deverá aparecer República do Líbano I') do
  expect(page).to have_current_path('https://www.fleury.com.br/unidades/republica-do-libano-i', url: true)
  expect(page).to have_content('República do Líbano I')
end