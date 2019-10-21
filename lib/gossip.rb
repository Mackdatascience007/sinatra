
require 'csv'

class Gossip
    attr_accessor :content, :author

    # J'initialise mes variables d'instances
    def initialize(author, content)
        @content = content
        @author = author
        
    end

    # Maintenant on va coder la méthode save dans la classe Gossip de façon à ce que si on l'appelle, cela crée une nouvelle ligne
    # (sans tout effacer !) dans le CSV qui contiendra en colonne 1 le author et en colonne 2 le content
    def save
        CSV.open("db/gossip.csv", "a+") do |csv|
            csv << [@author,@content]
        end
    end

    # Va chercher chacune des lignes du csv do
    # Créer un gossip avec les infos de la ligne all_gossips << gossip qui vient d'être créé
    def self.all
        all_gossips = [] # On initialise un array vide
        CSV.read("./db/gossip.csv").each do |csv_line|
          all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips # On retourne un array rempli d'objets Gossip
    end

    def self.find(id)
        self.all[id.to_i]
    end


end




