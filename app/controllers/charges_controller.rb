class ChargesController < ApplicationController

  def complete
  end

  def create
    @plan = Plan.find(params[:id])
    Stripe.api_key = ENV['STRIPE_KEY']

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @plan.price,
      description: "商品ID:#{@plan.id} 商品名:#{@plan.title}",
      currency: "jpy",

    })

    redirect_to action: :complete and return

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to create_charge_path
  end
end