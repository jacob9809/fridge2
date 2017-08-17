class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :food #음식명
      t.date :shelflife #유통기한
      t.integer :count #수량
      t.timestamps null: false
    end
  end
end
