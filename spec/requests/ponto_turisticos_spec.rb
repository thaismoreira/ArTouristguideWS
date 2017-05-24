require 'rails_helper'

RSpec.describe "PontoTuristicos", type: :request do
  describe "GET /ponto_turisticos" do
    it "works! (now write some real specs)" do
      get ponto_turisticos_path
      expect(response).to have_http_status(200)
    end
  end
end
