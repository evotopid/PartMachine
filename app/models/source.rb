class Source < ActiveRecord::Base
  attr_accessible :name, :url, :part_id
  belongs_to :part
  
  validates :name, presence: true
  validates :url,  presence: true
end
