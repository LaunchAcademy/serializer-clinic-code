class Api::V1::BooksController < ApplicationController
  # passing `scope` in so that the serializer has access to the current user (see BookShowSerializer)
  serialization_scope :current_user

  def index
    # This API endpoint will default to the BookSerializer since we're not specifying otherwise
    render json: Book.all

    # If we wanted to serve up multiple types of data, we could do the following, although it will detach it from our BookSerializer

    # render json: {
    #   books: Book.all,
    #   authors: Author.all
    # }

    # If we wanted the BookSerializer to be used, we could look at ActiveModel::ArraySerializer
  end

  def show
    # Here we are specifying a Serializer to use other than the default BookSerializer
    render json: Book.find(params[:id]), serializer: BookShowSerializer
  end
end
