module Api
  module V1
    class ViolationsController < ApiController
      respond_to :json

      def index
        respond_with Violation.all
      end
    end
  end
end
