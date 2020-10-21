class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_name

  has_many :reviews
end
