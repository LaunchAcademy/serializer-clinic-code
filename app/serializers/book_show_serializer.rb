class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author_name, :description, :publication

  has_many :reviews
end
