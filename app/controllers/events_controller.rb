class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
		@organizations = Organization.all
		@locations = Location.all
		@organizations = Organization.all
		@causes = Cause.all
		@event_types = EventType.all
	end

	def create
		@event = Event.new(params[:event])
		if @event.save
			flash[:success] = "Event created!"
			redirect_to events_path
		else
			render  'index'
		end
	end

	def edit
		@event = Event.find(params[:id])
		@organization = Organization.all
		@locations = Location.all
		@organizations = Organization.all
		@causes = Cause.all
		@event_types = EventType.all
	end

	def update
		@event = Event.find params[:id]
		if @event.update_attributes params[:event]
			flash[:success] = "The event has successfully been updated."
		  redirect_to events_path
		else
		  render 'edit'
		end
	end


end



