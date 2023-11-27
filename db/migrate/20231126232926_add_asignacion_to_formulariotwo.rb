class AddAsignacionToFormulariotwo < ActiveRecord::Migration[7.0]
  def change
    add_reference :formulariotwos, :asignacion, null: false, foreign_key: true
  end
end
