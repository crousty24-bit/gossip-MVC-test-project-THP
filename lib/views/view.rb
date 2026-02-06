class View
  def create_gossip
    puts "Qui est l'auteur du gossip ?" #get user input :author
    author = gets.chomp.upcase
    puts "Quel gossip veux-tu écrire ?" #get user input gossip :content
    content = gets.chomp
    return params = {author: author, content: content} #return params = hash of author & content to Controller params & injected to Gossip.new()
  end
end