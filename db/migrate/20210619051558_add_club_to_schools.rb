class AddClubToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :club, :text
  end
end
