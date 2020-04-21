class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body
  attribute :rating, key: :score

  belongs_to :user, if: :current_user?

  def current_user?
    object.user == scope
  end
  # belongs_to :book

  # attribute :greeting do
  #   "hello there"
  # end
end
