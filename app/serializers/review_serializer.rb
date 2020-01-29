class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :user_id

  attribute :string do
    "blah"
  end

  belongs_to :user, if: :current_user?

  def current_user?
    object.user == scope
  end
end
