class Announcement < ApplicationRecord  
  validates_presence_of :title,:date
  belongs_to :category
end
