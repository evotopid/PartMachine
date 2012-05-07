class Part < ActiveRecord::Base
  attr_accessible :description, :name, :amount, :category_id
  belongs_to :category
  
  define_index do
    indexes name, sortable: true
    indexes description
  end
  
  validates :name,        presence: true
  validates :description, presence: true
  validates :amount,      presence: true, numericality: { only_integer: true }
end
