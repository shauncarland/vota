module Api
  module V1
    class RepresentativesController < ApplicationController
      def index
        render json: { foo: "bar" }
      end

      def create
        render json: { foo: "buzz" }
      end
    end
  end
end
