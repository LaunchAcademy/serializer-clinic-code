class Author < ApplicationRecord
  has_many :books

  # If we will want access to the full name in multiple places, we want to define it here.
  # If we only need it in one serializer or controller, we could define it on that file.
  def full_name
    "#{first_name} #{last_name}"
  end
end
