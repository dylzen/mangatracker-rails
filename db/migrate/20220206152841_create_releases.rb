class CreateReleases < ActiveRecord::Migration[7.0]
  def change
    create_table :releases do |t|
      t.integer :date
      t.string :month
      t.string :day
      t.string :link
      t.string :picture
      t.string :editor
      t.string :title
      t.string :book

      t.timestamps
    end
  end
end
