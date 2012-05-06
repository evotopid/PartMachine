class Part < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :category
end
