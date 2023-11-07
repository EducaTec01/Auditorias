class CreateFormularios < ActiveRecord::Migration[7.0]
  def change
    create_table :formularios do |t|
      t.integer :noAuditoria
      t.string :proceso
      t.date :fecha

      t.timestamps
    end
  end
end
