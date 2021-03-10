class RegionsController < ApplicationController
  def index
    @region = Prefecture.where(region_id: "1")
  end
end
