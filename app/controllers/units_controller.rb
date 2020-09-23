class UnitsController < ApplicationController
  def index
    units = Unit.all
    # TODO: Use serializer
    render json: { units: units }
  end
end
