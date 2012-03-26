class Card < Neo4j::Rails::Model
  property :name, :type => String
  property :mana, :type => String
  property :card_type, :type => String
  property :color, :type => String
  property :power, :type => String
  property :health, :type => String
  property :body, :type => String
  property :edition, :type => String

end
