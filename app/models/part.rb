class Part < ActiveRecord::Base
  attr_accessible :description, :name, :amount, :category_id
  belongs_to :category
  
  define_index do
    indexes name, sortable: true
    indexes description
    
    set_property :delta => true
  end
  
  validates :name,        presence: true
  validates :description, presence: true
  validates :amount,      presence: true, numericality: { only_integer: true }
  
  after_save :set_delta_flag
  after_destroy :set_delta_flag
  
  def set_delta_flag
    self.delta = true
    #self.save
  end
end
