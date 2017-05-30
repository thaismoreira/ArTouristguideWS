class PontoTuristico < ApplicationRecord
  belongs_to :estado
  belongs_to :tipo_ponto_turistico
end
