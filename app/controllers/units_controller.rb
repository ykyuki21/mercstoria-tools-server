class UnitsController < ApplicationController
  def index
    units = Unit.all
    render status: 200, json: units, each_serializer: UnitSerializer
  end

  def show
    unit = Unit.find_by(id: params[:id])

    if unit
      render status: 200, json: unit, serializer: UnitSerializer
    else
      render status: 404
    end
  end
end
