class Filme < ApplicationRecord
    has_many :elencos
    has_many :comentarios
    has_many :atores, through: :elencos

    validates :titulo, :ano_lancamento, presence: true
    validates :titulo, uniqueness: true
end
