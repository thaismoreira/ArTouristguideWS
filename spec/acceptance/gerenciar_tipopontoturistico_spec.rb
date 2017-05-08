require 'rails_helper'


feature 'gerenciar tipo_ponto_turistico' do

  scenario 'incluir tipo_ponto_turistico' do #, :javascript => true  do


    visit new_tipo_ponto_turistico_path

    preencher_e_verificar_tipo_ponto_turistico



  end

  scenario 'alterar tipo_ponto_turistico' do #, :javascript => true  do

    tipo_ponto_turistico = FactoryGirl.create(:tipo_ponto_turistico)

    visit edit_tipo_ponto_turistico_path(tipo_ponto_turistico)

    preencher_e_verificar_tipo_ponto_turistico



  end

  scenario 'excluir tipo_ponto_turistico' do #, :javascript => true  do

    tipo_ponto_turistico = FactoryGirl.create(:tipo_ponto_turistico)

    visit tipo_ponto_turisticos_path

    click_link 'Excluir'


  end

  def preencher_e_verificar_tipo_ponto_turistico

    fill_in 'Tipo', :with => 'Museu'



    click_button 'Salvar'
    page.should have_content 'Tipo:Museu'


  end



end
