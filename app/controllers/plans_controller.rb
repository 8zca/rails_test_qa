class PlansController < ApplicationController
  def show
    @plan = Plan.find(1)
  end
end