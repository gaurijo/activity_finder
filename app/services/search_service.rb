class SearchService 
  def self.conn 
    Faraday.new("https://www.boredapi.com/api/") do |faraday|
      faraday.params['participants']
    end
  end

  def self.get_search(participants)
    response = conn.get('activity?', {query: participants})
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end