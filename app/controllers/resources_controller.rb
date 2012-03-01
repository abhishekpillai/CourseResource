require 'open-uri'

class ResourcesController < ApplicationController
  def index
    if params[:search].present?
      @search = params[:search].split(' ').join("+")
      @results = JSON.parse(open("https://gdata.youtube.com/feeds/api/videos?q=#{@search}&category=education&alt=json").read)["feed"]
      render "index"
    else
      @results = JSON.parse(open("https://gdata.youtube.com/feeds/api/videos?q=sample&category=education&alt=json").read)["feed"]
      render "index"
    end
  end

  def show
  end
end
