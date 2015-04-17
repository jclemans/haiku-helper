class Haiku < ActiveRecord::Base
  has_and_belongs_to_many :words
  validates :content, presence: true
end
