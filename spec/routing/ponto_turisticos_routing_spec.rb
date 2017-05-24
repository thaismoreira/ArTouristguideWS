require "rails_helper"

RSpec.describe PontoTuristicosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ponto_turisticos").to route_to("ponto_turisticos#index")
    end

    it "routes to #new" do
      expect(:get => "/ponto_turisticos/new").to route_to("ponto_turisticos#new")
    end

    it "routes to #show" do
      expect(:get => "/ponto_turisticos/1").to route_to("ponto_turisticos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ponto_turisticos/1/edit").to route_to("ponto_turisticos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ponto_turisticos").to route_to("ponto_turisticos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ponto_turisticos/1").to route_to("ponto_turisticos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ponto_turisticos/1").to route_to("ponto_turisticos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ponto_turisticos/1").to route_to("ponto_turisticos#destroy", :id => "1")
    end

  end
end
