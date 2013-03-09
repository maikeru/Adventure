class Item
  attr_accessor :name, :description, :takeable, :state
  
  def initialize(name, description, takeable, state=nil)
    @name=name
    @description=description
    @takeable=takeable
    @state=state
  end
  
  def to_s
    name
  end
  
  
end