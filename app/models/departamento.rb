class Departamento < ApplicationRecord
    has_many :localizacaos, dependent: :destroy

    validates :nome, presence: :true, uniqueness: :true
end
