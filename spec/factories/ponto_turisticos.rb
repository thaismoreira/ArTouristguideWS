FactoryGirl.define do
  factory :ponto_turistico do
    nome "MyString"
    endereco "MyString"
    cep "MyString"
    cidade "MyString"
    estado nil
    tipopontoturistico nil
    latitude 1.5
    longitude 1.5
    raio 1
    azimuthe 1.5
  end
end
