module Api
  module V1
    class RepresentativeProfilesController < ApplicationController
      def index
        rp = RepresentativeProfile.where(representative_id: params[:representative_id]).first
        render json: { representative_id: rp.id, representative_first_name: rp.representative.first_name }
      end

      def new
        binding.pry
        @representative = Representative.find(params[:representative_id])
        @representative_profile = RepresentativeProfile.new
      end

      def create
        binding.pry
      end
    end
  end
end