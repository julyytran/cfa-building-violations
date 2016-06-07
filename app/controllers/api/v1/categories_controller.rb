module Api
  module V1
    class CategoriesController < ApiController
      respond_to :json

      def index
        respond_with Category.all
      end
    end
  end
end
