module Api
  module V1
    class RepresentativeProfileController < ApplicationController
      def index
        rp = RepresentativeProfile.where(representative_id: params[:representative_id]).first
        render json: { representative_id: rp.id, representative_first_name: rp.representative.first_name }

      end
    end
  end
end