class PhotosController < ApplicationController
  def index
    photo_numbers = 1.upto(40)
    @photos = Hash.new { |hash, key| hash[key] = [] }

    Person.all.each do |person|
      if person.photo_number
        person.photo_number.each do |num|
          @photos[num] << person unless num.blank?
        end
      end
    end
  end
end
