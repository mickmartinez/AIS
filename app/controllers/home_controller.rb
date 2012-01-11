class HomeController < ApplicationController
  def index
	@posts = Post.find(:all)
  end

end
