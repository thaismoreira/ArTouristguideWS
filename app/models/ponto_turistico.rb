class PontoTuristico < ApplicationRecord
  belongs_to :estado
  belongs_to :tipopontoturistico
end
