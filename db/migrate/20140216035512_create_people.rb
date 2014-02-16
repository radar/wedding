class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :dietary_requirements
      t.string :table_number
      t.string :seat_number
    end
  end
end
