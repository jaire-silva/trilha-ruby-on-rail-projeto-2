class Atore < ApplicationRecord
    has_many :elencos
    has_many :filmes, through: :elencos

    validates :nome, :ano_nascimento, :emaisl, presence: true
    validates :emaisl, uniqueness: true
end
