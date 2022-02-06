class RemoveOwnVolsFromMangas < ActiveRecord::Migration[7.0]
  def change
    remove_column :mangas, :own_vols, :integer
  end
end
