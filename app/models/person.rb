class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  # validates_uniqueness_of :seat_number, :scope => :table_number

  def name
    [last_name.upcase, first_name].delete_if { |n| n.blank? }.join(", ")
  end

  def full_name
    [first_name, last_name].delete_if { |n| n.blank? }.join(" ")
  end

  def photo_number=(value)
    self[:photo_number] = value.join(",")
  end

  def photo_number
    self[:photo_number].split(",") if self[:photo_number]
  end
end
