class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :parts
  
  validates :description, presence: true
  validates :name,        presence: true
  
  def to_s
    name
  end
end
