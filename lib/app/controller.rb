require_relative 'gossip'
require_relative '../views/view'

class Controller
  def initialize
    @view = View.new
  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new("Allen", "potin potin")
    gossip.save
  end
end
