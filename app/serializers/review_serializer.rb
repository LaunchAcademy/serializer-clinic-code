class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body
  attribute :rating, key: :reviewScore

  belongs_to :user, if: :current_user?

  belongs_to :book
  def current_user?
    # binding.pry
    scope == object.user
  end
end
