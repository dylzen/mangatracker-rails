class CreateVolumes < ActiveRecord::Migration[7.0]
  def change
    create_table :volumes do |t|
      t.references :manga, null: false, foreign_key: true
      t.integer :number
      t.date :rel_date
      t.decimal :price

      t.timestamps
    end
  end
end
