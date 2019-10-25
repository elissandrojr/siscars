json.extract! carro, :id, :proprietario, :exercicio, :placa, :renavam, :chassi, :modelo, :ano, :created_at, :updated_at
json.url carro_url(carro, format: :json)
