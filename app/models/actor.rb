class Actor < ActiveRecord::Base
  has_many(:character)
  has_many(:show, :through => :character)

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def characters
    self.character
  end

  def list_roles
    self.character.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
end