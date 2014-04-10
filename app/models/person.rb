class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  # validates_uniqueness_of :seat_number, :scope => :table_number

  def name
    [last_name.upcase, first_name].delete_if { |n| n.blank? }.join(", ")
  end
end
