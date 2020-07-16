class Api::V1::BooksController < ApplicationController
  def index
    render json: Book.all
    # render json: Book.all, each_serializer: BookShowSerializer
  end

  # def index
  #   render json: {
  #     books: books_serializered_data,
  #     reviews: reviews_serializered_data
  #   }
  # end
  # def index
  #   render json: {
  #     books: serialized_data(Book.all, BookSerializer),
  #     reviews: serialized_data(Review.all, ReviewSerializer)
  #   }
  # end

  def show
    render json: Book.find(params[:id]), serializer: BookShowSerializer
  end

  private

  # def books_serializered_data
  #   ActiveModelSerializers::SerializableResource.new(Book.all, each_serializer: BookSerializer)
  # end

  # def reviews_serializered_data
  #   ActiveModelSerializers::SerializableResource.new(Review.all, each_serializer: ReviewSerializer)
  # end

  def serialized_data(data, serializer)
    ActiveModelSerializers::SerializableResource.new(data, each_serializer: serializer, scope: current_user)
  end
end
