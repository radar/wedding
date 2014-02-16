class TableController < ApplicationController
  def show
    @people = Person.where(table_number: params[:id]).order(:seat_number)
    render layout: false
  end

  def list
    @tables = Person.all
      .sort_by { |p| p.seat_number.to_i }
      .group_by(&:table_number)
      .sort_by { |t,_| t.to_i }
  end
end
