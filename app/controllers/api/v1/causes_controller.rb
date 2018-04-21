class Api::V1::CausesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    causes = Cause.all
    render json: causes
  end

  def show
   cause = Cause.find(params[:id])
   events = cause.events
   articles = cause.articles
   users = cause.users
   render json: {
     cause: cause, events: events, articles: articles, users: users
   }
  end

  private

  def causes_params
    params.require(:cause).permit(
      :name,
      :description,
      :user_id
      )
  end
end
