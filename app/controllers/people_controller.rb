class PeopleController < ApplicationController
  def index
    @people = Person.order("last_name ASC")
  end

  def list
    index
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "Added #{@person.name}!"
      redirect_to people_path
    else
      flash[:danger] = "Could not add #{@person.name}."
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      flash[:success] = "Updated #{@person.name}'s details!"
      redirect_to people_path
    else
      flash[:danger] = "Could not update #{@person.name}."
      render :new
    end  
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    flash[:success] = "Removed #{@person.name}."
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit!
  end
end
