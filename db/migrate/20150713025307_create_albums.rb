class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.belongs_to :country, index: true, foreign_key: true
      t.belongs_to :album_creator, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
