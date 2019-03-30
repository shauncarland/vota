module Api
  module V1
    class RepresentativesController < ApplicationController
      def index
        render json: { foo: "bar" }
      end

      def create
        render json: { foo: "buzz" }
      end

      def show
        render json: { page: "representatives_show" }
      end
    end
  end
end
