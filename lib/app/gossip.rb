require 'csv'
#require 'pry'
class Gossip
  attr_reader :author, :content
  def initialize(author, content)
    @author = author
    @content= content
  end

  def save
    CSV.open("db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("db/gossip.csv").each do |csv_line| #use .read (!.open "ab" is for editing)
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

  def self.delete(id)
    csv_content = CSV.read("db/gossip.csv")
    csv_content.delete_at(id -1)
    CSV.open("db/gossip.csv", "w") do |csv|
      csv_content.each do |row|
        csv << row
      end
    end
  end
end
#binding.pry