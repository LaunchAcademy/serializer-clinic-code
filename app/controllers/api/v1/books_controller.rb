class Api::V1::BooksController < ApplicationController
  def index
    render json: Book.all
    # render json: Book.all, each_serializer: BookShowSerializer

    # render json: {
    #   books: ActiveModelSerializers::SerializableResource.new(Book.all, each_serializer: BookSerializer, scope: current_user),
    #   reviews: ActiveModelSerializers::SerializableResource.new(Review.all, each_serializer: ReviewSerializer, scope: current_user)
    # }
  end

  def show
    render json: Book.find(params[:id]), serializer: BookShowSerializer
  end
end
