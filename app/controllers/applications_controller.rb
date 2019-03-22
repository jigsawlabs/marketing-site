class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    @application = Application.new(params.require(:application).permit(:first_name, :last_name, :email, :phone, :zipcode))
    @application.save
  end
end
