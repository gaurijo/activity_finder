class Search 
  attr_reader :activity, :participants, :price 
  def initialize(data)
    @activity = data[:activity]
    @participants = data[:participants]
    @price = data[:price]
  end
end