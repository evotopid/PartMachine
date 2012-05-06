class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :parts
  
  def to_s
    name
  end
end
