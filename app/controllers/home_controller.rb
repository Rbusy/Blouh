class HomeController < ApplicationController
  def index
    @value = StartScrap.new("https://coinmarketcap.com/all/views/all/")
    @kebab = @value.perform
  end

  def testk
    flash[:notice] = params["money"]["value"]
    redirect_to home_index_path
  end
end
