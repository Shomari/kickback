class OffersController < ApplicationController
	respond_to :html, :json
  before_action :set_offer, only: [:show, :edit, :update, :destroy]


	def index
		@offers = Offer.all
		respond_with @offers
	end

	def show
    @referral = Referral.create
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:reward, :description)
    end
end
