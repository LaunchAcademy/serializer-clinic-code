class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :user_id

  belongs_to :user
end
