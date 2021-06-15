class CreateSchoolComments < ActiveRecord::Migration[5.2]
  def change
    create_table :school_comments do |t|
      t.integer :school_id, null: false
      t.string :position
      t.integer :number
      t.float :rate
      t.text :review

      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
