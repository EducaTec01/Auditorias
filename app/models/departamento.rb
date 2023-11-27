class Departamento < ApplicationRecord
    has_many :asignacion
    has_many :formulario
    has_many :user
end
