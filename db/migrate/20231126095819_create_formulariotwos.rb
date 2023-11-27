class CreateFormulariotwos < ActiveRecord::Migration[7.0]
  def change
    create_table :formulariotwos do |t|
      t.string :evidencia

      t.timestamps
    end
  end
end
