require "rails_helper"

RSpec.describe TipoPontoTuristicosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tipo_ponto_turisticos").to route_to("tipo_ponto_turisticos#index")
    end

    it "routes to #new" do
      expect(:get => "/tipo_ponto_turisticos/new").to route_to("tipo_ponto_turisticos#new")
    end

    it "routes to #show" do
      expect(:get => "/tipo_ponto_turisticos/1").to route_to("tipo_ponto_turisticos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipo_ponto_turisticos/1/edit").to route_to("tipo_ponto_turisticos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tipo_ponto_turisticos").to route_to("tipo_ponto_turisticos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tipo_ponto_turisticos/1").to route_to("tipo_ponto_turisticos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tipo_ponto_turisticos/1").to route_to("tipo_ponto_turisticos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipo_ponto_turisticos/1").to route_to("tipo_ponto_turisticos#destroy", :id => "1")
    end

  end
end
