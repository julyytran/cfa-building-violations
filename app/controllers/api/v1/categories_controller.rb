module Api
  module V1
    class CategoriesController < ApiController
      respond_to :json

      def index
        respond_with Category.order(count: :desc)
      end
    end
  end
end
