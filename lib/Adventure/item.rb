class Item
  attr_accessor :id, :name, :description
  
  def initialize(id, args = {})
    @id=id
    @name=args[:name]
    @description=args[:description]
  end
  
  def show
    @name
  end
  
end