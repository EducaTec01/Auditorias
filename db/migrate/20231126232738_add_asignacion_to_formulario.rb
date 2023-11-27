class AddAsignacionToFormulario < ActiveRecord::Migration[7.0]
  def change
    add_reference :formularios, :asignacion, null: false, foreign_key: true
  end
end
