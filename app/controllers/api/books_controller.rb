# frozen_string_literal: true

module API
  class BooksController < ApplicationController
    def index
      render json: UserBooksResource.new(current_user).serialize
    end

    def create
      title = params[:title]
      author = params[:author]
      cover_image_url = params[:cover_image_url]
      book = Book.find_or_create_by(title:, author:, cover_image_url:)
      if book.persisted?
        head :ok
      else
        render json: { error: '本の登録に失敗しました' }, status: :unprocessable_entity
      end
    end
  end
end
