class HomeController < ApplicationController

  def index
    @posts = Post.all
  end

  def aboutme
  end

end