class Book < ApplicationRecord
  belongs_to :author
  belongs_to :creator, class_name: :User
  has_many :reviews

  def author_name
    "#{author.first_name} #{author.last_name}"
  end
end
