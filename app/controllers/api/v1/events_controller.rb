class Api::V1::EventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    events = Event.all
    render json: events
  end

  private

  def events_params
    params.require(:event).permit(
      :name,
      :description,
      :feed_url,
      :cause_id
      )
  end
end
