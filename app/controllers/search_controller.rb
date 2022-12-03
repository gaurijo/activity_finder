class SearchController < ApplicationController 
  def index 
    @participants = params[:num_participants]
    @activities = SearchFacade.create_activities(@participants)
  end
end