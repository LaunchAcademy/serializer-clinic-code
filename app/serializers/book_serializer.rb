class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_name

  # def author_name
  #   # binding.pry
  #   "#{object.author.first_name} #{object.author.last_name}"
  # end
end
