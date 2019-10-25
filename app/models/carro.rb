class Carro < ApplicationRecord
    validates :proprietario, :exercicio, presence: true
    validates :placa, :renavam, :chassi, presence: true, uniqueness: { case_sensitive: false }
end
