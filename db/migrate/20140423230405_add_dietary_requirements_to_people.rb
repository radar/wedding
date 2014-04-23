class AddDietaryRequirementsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :dietary_requirement, :string
    add_column :people, :other_requirements, :text
  end
end
