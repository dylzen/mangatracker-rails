class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.integer :pub_vols
      t.integer :own_vols
      t.integer :mis_vols
      t.string :status
      t.string :collection

      t.timestamps
    end
  end
end
