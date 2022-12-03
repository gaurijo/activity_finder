class SearchFacade 
  def self.create_activities(participants)
    activities = SearchService.get_search(participants)
    Search.new(activities)
  end
end