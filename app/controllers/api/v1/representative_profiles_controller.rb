module Api
  module V1
    class RepresentativeProfilesController < ApplicationController
      def index
        rp = RepresentativeProfile.where(representative_id: params[:representative_id]).first
        render json: { representative_id: rp.id, representative_first_name: rp.representative.first_name }
      end

      def new
        # binding.pry
        @representative = Representative.find(params[:representative_id])
        @representative_profile = RepresentativeProfile.new
      end

      def create
        @representative = Representative.find(params[:representative_id])
        @representative_profile = RepresentativeProfile.new
        @representative_profile.representative = @representative
        # binding.pry
        @representative_profile.motivations = representative_profile_params[:motivations]
        @representative_profile.priorities = representative_profile_params[:priorities]
        @representative_profile.save!
      end

      private
      def representative_profile_params
        params.require(:representative_profile).permit(:motivations, :priorities)
      end
    end
  end
end