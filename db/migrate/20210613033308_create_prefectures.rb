class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
