class CreateDivisions < ActiveRecord::Migration[5.2]
  def change
    create_table :divisions do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
