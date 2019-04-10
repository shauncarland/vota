module Api
  module V1
    class RepresentativesController < Api::V1::BaseController
      include DeviseTokenAuth::Concerns::SetUserByToken

      def index
        # binding.pry
        render json: { foo: "bar" }
      end

      def create
        render json: { foo: "buzz" }
      end

      def show
        # render json: { page: "representatives_show" }
        @representative = Representative.find(params[:id])

        # binding.pry

        @first_name = @representative.first_name
        @last_name = @representative.last_name
        @email = @representative.email
        @phone_number = @representative.phone_number
        @website = @representative.website
        @motivations = @representative.motivations
        @priorities = @representative.priorities

        # render 'api/v1/representatives/show', locals: { first_name: "Some text" }
      end
    end
  end
end
