class TableController < ApplicationController
  def show
    @people = Person.where(table_number: params[:id]).order(:seat_number)
    render layout: false
  end

  def list
    @groups = Person
      .order(:seat_number)
      .group_by(&:table_number)
      .sort_by { |t,people| t }
      .in_groups_of(4)
  end
end
