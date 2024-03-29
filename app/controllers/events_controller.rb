class EventsController < ApplicationController
  def index
    redirect_to 'https://www.meetup.com/Data-Workshops/events/'
  end

  def new
    @event = Event.new
    @event.build_location
  end

  def create
    event_params = params.require(:event).permit(:title, :description, :begin_time, :end_time)
    @event = Event.new(event_params)
    location_params = params.require(:location).permit(:name, :address, :city, :state, :zip)
    @location = @event.build_location(location_params)
    @location.save
    @event.save
    redirect_to events_path
  end
end
