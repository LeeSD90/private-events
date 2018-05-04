class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def create
  	User.find(session[:user_id]).events.build(event_params)
  end

  def show
  	@event = Event.find_by(params[:id])
  end

    private

    def event_params
      params.require(:event).permit(:name, :location, :description, :date)
    end


end
