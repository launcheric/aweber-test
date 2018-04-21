class Api::V1::ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    articles = Article.all
    render json: articles
  end

  private

  def articles_params
    params.require(:cause).permit(
      :name,
      :description,
      :feed_url,
      :image_url,
      :cause_id
      )
  end
end
