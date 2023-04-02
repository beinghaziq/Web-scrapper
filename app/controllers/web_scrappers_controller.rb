class WebScrappersController < ApplicationController
  def index
  end

  def new
    @data = WebScrapper.crawl!
  end
end
