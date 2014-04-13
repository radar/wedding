class AddPhotoNumberToPeople < ActiveRecord::Migration
  def change
    add_column :people, :photo_number, :string
  end
end
