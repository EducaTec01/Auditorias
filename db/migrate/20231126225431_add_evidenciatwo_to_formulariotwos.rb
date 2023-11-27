class AddEvidenciatwoToFormulariotwos < ActiveRecord::Migration[7.0]
  def change
    add_column :formulariotwos, :evidenciatwo, :string
  end
end
