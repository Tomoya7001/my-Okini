class TopsController < ApplicationController
  def index
    @tops = Top.all
  end

  def new
    @top = Top.new
  end

  def create
    @top = Top.new(tops_params)
    @top.save!
  end

  def tops_params
    params.require(:top).permit(:video_top)
  end
end
