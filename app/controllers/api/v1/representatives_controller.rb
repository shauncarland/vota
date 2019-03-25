module Api
  module V1
    class RepresentativesController < ApplicationController
      def index
        render json: { foo: "bar" }
      end
    end
  end
end
