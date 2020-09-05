class Show < ActiveRecord::Base
  has_many(:characters)
  has_many(:actors, :through => :characters)
  belongs_to(:network)

  def actors_list
    self.actors.collect do |actor|
      actor.full_name
    end
  end

  # def build_network(opts = {})
  #   self.network = Network.find_or_create_by(opts.keys.first => opts[opts.keys.first])
  # end
  #omg why did I build these they're built in methods and I'm just now realizing this fml
end