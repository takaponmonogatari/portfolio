class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.integer :prefecture_id, null: false
      t.integer :division_id, null: false
      t.string :name, null:false
      t.string :name_kana, null:false
      t.string :postal_code, null:false
      t.string :address, null:false
      t.string :url
      t.string :google
      t.string :yahoo
      t.string :image_id
      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
