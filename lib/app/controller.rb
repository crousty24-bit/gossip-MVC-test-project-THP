require_relative 'gossip'
require_relative '../views/view'

class Controller
  def initialize
    @view = View.new
  end
  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content]) #inject hash of params(from View) when new Gossip created, then saved in CSV
    gossip.save
  end
end
