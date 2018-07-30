class Category < ApplicationRecord
  validates_presence_of :name
  has_many :announcements , dependent: :destroy
end 
