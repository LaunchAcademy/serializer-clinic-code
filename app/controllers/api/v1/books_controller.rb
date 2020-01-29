class Api::V1::BooksController < ApplicationController
  # def index
  #   render json: {
  #     books: serialized_data(Book.all, BookSerializer),
  #     reviews: serialized_data(Review.all, ReviewSerializer)
  #   }
  # end
  # def index
  #   render json: {
  #     books: serialized_books,
  #     reviews: serialized_reviews
  #   }
  # end
  def index
    render json: Book.all
  end

  def show
    render json: Book.find(params[:id])
    render json: Book.find(params[:id]), serializer: BookShowSerializer
  end

  private

  def serialized_data(data, serializer)
    ActiveModelSerializers::SerializableResource.new(data, each_serializer: serializer)
  end

  # def serialized_books
  #   ActiveModelSerializers::SerializableResource.new(Book.all, each_serializer: BookSerializer)
  # end
  #
  # def serialized_reviews
  #   ActiveModelSerializers::SerializableResource.new(Review.all, each_serializer: ReviewSerializer)
  # end
end
