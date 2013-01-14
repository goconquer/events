class ViewsController < ApplicationController

	def month

	end

	def filter
		@organizations = Organization.all
		@locations = Location.all
		@cities = Location.select(:city).uniq
		@causes = Cause.all
		@event_types = EventType.all

		@events ||= filter_events

	end
\

  
	private
		def filter_events
			events = Event.order("start_time") 
			events = events.includes(:locations, :organizations, :event_types, :causes)
			events = events.where(:locations => {:id => params[:location]}) unless params[:location].blank?
			events = events.where(:locations => {:city => params[:city]}) unless params[:city].blank?
			events = events.where(:attire => params[:attire]) unless params[:attire].blank?
			events = events.where(:organizations => {:id => params[:organization]}) unless params[:organization].blank?
			events = events.where(:event_types => {:id => params[:event_type]}) unless params[:event_type].blank?
			events = events.where(:causes => {:id => params[:cause]}) unless params[:cause].blank?
			events = events.where("cost_pre_order <= ?", params[:max_cost]) unless params[:max_cost].blank?
			
			events
		end



end
