class AddDepartamentoToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :departamento, null: false, foreign_key: true
  end
end
