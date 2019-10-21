class ChargesController < ApplicationController

  def complete
  end

  def create
    @plan = Plan.find(params[:id])
    Stripe.api_key = ENV['STRIPE_KEY']


    redirect_to charges_complete_path and return

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to create_charge_path
  end
end