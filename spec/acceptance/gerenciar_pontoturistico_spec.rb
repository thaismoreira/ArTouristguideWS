require 'rails_helper'


feature 'gerenciar ponto_turistico' do

  before(:each) do
     create(:estado, nome: 'Rio')
     create(:tipo_ponto_turistico, tipo: 'Catedral')
  end

  let(:dados) do
  {
    nome: 'Maria',
    endereco: 'Rua B',
    cep: '28010-220',
    cidade: 'Campos',
    longitude: '90,2',
    latitude: '90,2',
    azimute: '90,2',
    raio: '10',
    tipo_ponto_turistico: 'Catedral',
    estado: 'Rio'
  }
  end

  def preencher(dados)
   fill_in 'Nome', with: dados[:nome]
   fill_in 'Endereco', with: dados[:endereco]
   select dados[:estado], from: 'Estado'
   select dados[:tipo_ponto_turistico], from: 'Tipo ponto turistico'
   fill_in 'Cep', with: dados[:cep]
   fill_in 'Longitude', with: dados[:longitude]
   fill_in 'Latitude', with: dados[:latitude]
   fill_in 'Azimute', with: dados[:azimute]
   fill_in 'Raio', with: dados[:raio]
   fill_in 'Cidade', with: dados[:cidade]
  end

 def verificar(dados)
   expect(page).to have_content "Nome: #{dados[:nome]}"
   expect(page).to have_content "Endereco: #{dados[:endereco]}"
   expect(page).to have_content "Cep: #{dados[:cep]}"
   expect(page).to have_content "Cidade: #{dados[:cidade]}"
   expect(page).to have_content "Longitude: #{dados[:longitude]}"
   expect(page).to have_content "Latitude: #{dados[:latitude]}"
   expect(page).to have_content "Azimute: #{dados[:azimute]}"
   expect(page).to have_content "Raio: #{dados[:raio]}"
   expect(page).to have_content "Estado: #{dados[:estado]}"
 end

  scenario 'incluir ponto_turistico' do #, :javascript => true  do


    visit new_ponto_turistico_path

    preencher(dados)
    click_button 'Salvar'
    verificar(dados)


  end

  scenario 'alterar ponto_turistico' do #, :javascript => true  do
    estado=create(:estado, nome: 'Rio')
    tipo=create(:tipo_ponto_turistico, tipo: 'Catedral')
    ponto_turistico = FactoryGirl.create(:ponto_turistico, estado: :estado, tipo_ponto_turistico: :tipo) 

    visit edit_ponto_turistico_path(ponto_turistico)

    preencher(dados)
    click_button 'Salvar'
    verificar(dados)



  end

  scenario 'excluir ponto_turistico' do #, :javascript => true  do

    ponto_turistico = FactoryGirl.create(:ponto_turistico)

    visit ponto_turisticos_path

    click_link 'Excluir'


  end

end
