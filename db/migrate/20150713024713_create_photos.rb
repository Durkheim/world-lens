class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :filename
      t.belongs_to :poster, index: true, foreign_key: true
      t.belongs_to :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
