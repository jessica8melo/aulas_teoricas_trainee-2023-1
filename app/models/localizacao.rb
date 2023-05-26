class Localizacao < ApplicationRecord
  belongs_to :departamento

  validates :departamento, presence: :true
end
