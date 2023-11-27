class AddDepartamentoToFormulariotwo < ActiveRecord::Migration[7.0]
  def change
    add_reference :formulariotwos, :departamento, null: false, foreign_key: true
  end
end
