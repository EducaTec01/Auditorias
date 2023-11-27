class User < ApplicationRecord
  belongs_to :role
  has_many :asignacion
  belongs_to :departamento

  def role_name
    role.try(:name)
  end

  def self.auditors
    where(role_id: 3)
  end

  def nombre_completo
    "#{first_name} #{last_name}"
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
