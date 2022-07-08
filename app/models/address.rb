class Address < ApplicationRecord
  validates :city, presence: true
  validates :state, presence: true

  
  has_many :artifacts

end
