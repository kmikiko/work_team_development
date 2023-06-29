class BlogsController < ApplicationController

  def new
    @blog = Blog.all

  end

  def show
    @blog = Blog.find(params[:id])

  end
end