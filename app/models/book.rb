class Book < ApplicationRecord
  belongs_to :author
  belongs_to :creator, class_name: :User
  has_many :reviews

  #I should have removed but forgot
  binding.pry 
end
