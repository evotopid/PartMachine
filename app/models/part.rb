class Part < ActiveRecord::Base
  attr_accessible :description, :name, :category_id
  belongs_to :category
  
  validates :name,        presence: true
  validates :description, presence: true
end
