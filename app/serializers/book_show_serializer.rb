class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author_name, :user_reviews

  # We can set up an association so that we get an array of all reviews for this book
  # NOTE: This must also be set up on our models!
  # This will by default also look at our ReviewSerializer to format the data, but if we get too far nested it may not show us nested data (like the related user)
  has_many :reviews

  def author_name
    object.author.full_name
    # If we didn't define this on the model we could define it here:
    # "#{object.author.first_name} #{object.author.last_name}"
  end

  def user_reviews
    # We can now access the current_user with the keyword `scope`
    object.reviews.where(user: scope)
  end
end
