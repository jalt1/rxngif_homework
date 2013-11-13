class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :source
      t.string :caption
    end
  end
end
