class Part < ActiveRecord::Base
  attr_accessible :description, :name, :amount, :category_id
  belongs_to :category
  has_and_belongs_to_many :sources
  
  scoped_search on: [:name, :description]
  
  validates :name,        presence: true
  validates :description, presence: true
  validates :amount,      presence: true, numericality: { only_integer: true }
end
