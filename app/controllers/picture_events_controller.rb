class PictureEventsController < ApplicationController

    def create
        @event = Event.find(params[:event_id])
        @event.picture_event.attach(params[:picture_event])
        redirect_to(event_path(@event))
      end
end
