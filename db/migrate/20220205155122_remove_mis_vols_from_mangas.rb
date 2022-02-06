class RemoveMisVolsFromMangas < ActiveRecord::Migration[7.0]
  def change
    remove_column :mangas, :mis_vols, :integer
  end
end
