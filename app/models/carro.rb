class Carro < ApplicationRecord
    has_many_attached :files

    validates :proprietario, :exercicio, presence: true
    validates :placa, :renavam, :chassi, presence: true, uniqueness: { case_sensitive: false }
end
