class UnitsController < ApplicationController
  def index
    units = Unit.all
    render status: 200, json: units, each_serializer: UnitSerializer
  end
end
