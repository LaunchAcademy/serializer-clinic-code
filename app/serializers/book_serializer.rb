class BookSerializer < ActiveModel::Serializer
  # Here we specify our attributes that we want to pass through with the following keys and the value of that attribute on the model object
  # We can also create a custom attribute (author_name) by defining it below

  attributes :id, :title, :author_name

  # If we wanted the entire author object, we could do the following:
  # belongs_to :author

  def author_name
    # We need to use `object` instead of `self` to access the book itself, not the serializer object
    object.author.full_name
  end
end
