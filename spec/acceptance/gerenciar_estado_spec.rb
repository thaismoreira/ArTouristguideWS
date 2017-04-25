require 'rails_helper'


feature 'gerenciar estado' do

  scenario 'incluir estado' do #, :javascript => true  do


    visit new_estado_path

    preencher_e_verificar_estado



  end

  scenario 'alterar estado' do #, :javascript => true  do

    estado = FactoryGirl.create(:estado)

    visit edit_estado_path(estado)

    preencher_e_verificar_estado



  end

  scenario 'excluir estado' do #, :javascript => true  do

    estado = FactoryGirl.create(:estado)

    visit estados_path

    click_link 'Excluir'


  end

  def preencher_e_verificar_estado

    fill_in 'Nome', :with => 'Rio'
    fill_in 'Sigla',  :with => "RJ"


    click_button 'Salvar'
    page.should have_content 'Nome:Rio'
    page.should have_content 'Sigla:RJ'

  end



end
