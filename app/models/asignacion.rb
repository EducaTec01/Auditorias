class Asignacion < ApplicationRecord
  belongs_to :user
  belongs_to :departamento
  has_many :formulario
end
