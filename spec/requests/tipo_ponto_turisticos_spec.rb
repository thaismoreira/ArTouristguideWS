require 'rails_helper'

RSpec.describe "TipoPontoTuristicos", type: :request do
  describe "GET /tipo_ponto_turisticos" do
    it "works! (now write some real specs)" do
      get tipo_ponto_turisticos_path
      expect(response).to have_http_status(200)
    end
  end
end
