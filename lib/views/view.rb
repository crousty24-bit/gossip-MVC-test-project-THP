class View
  def create_gossip
    puts "Qui est l'auteur du gossip ?" #get user input :author
    author = gets.chomp.upcase
    puts "Quel gossip veux-tu écrire ?" #get user input gossip :content
    content = gets.chomp
    return params = {author: author, content: content} #return params = hash of author & content to Controller params & injected to Gossip.new()
  end

  def index_gossips(gossips)
    gossips.each do |gossip|
      puts "#{gossip.author}: #{gossip.content}" 
    end
  end

  def delete_gossip
    puts "Quel est le numéro du gossip que tu souhaite supprimer ?"
    print ">"
    return gets.chomp.to_i
  end
end