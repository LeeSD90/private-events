class EventsController < ApplicationController
include SessionsHelper

  def index
  	@future = Event.future
    @past = Event.past
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = current_user.events.build(event_params)
  	if @event.save
  		flash[:success] = "Event created."
  		redirect_to @event
  	else
  		flash[:error] = "Event not created"
  		render 'new'
  	end
  end

  def show
  	@event = Event.find(params[:id])
  end

    private

    def event_params
      params.require(:event).permit(:name, :location, :description, :date)
    end


end
