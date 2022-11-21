class Comentario < ApplicationRecord

  scope :aprovados, -> { where(aprovado: true) }
  scope :naoAprovados, -> { where(aprovado: false) }

  belongs_to :filme

  validates :conteudo, :filme_id, presence: true
end
