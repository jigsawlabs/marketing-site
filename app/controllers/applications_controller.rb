class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    @application = Application.new(params.require(:application).permit(:first_name, :last_name, :email, :phone, :zipcode))
    @application.save
    render json: {id: @application.id}
  end

  def update_app
    number = params.require(:application).permit(:number)[:number]
    @application = Application.find(number)
    @application.update_attributes(params.require(:application).permit(:linkedin, :github, :preferred_course_date, :interested_field))
  end
end
