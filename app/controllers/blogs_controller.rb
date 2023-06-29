class BlogsController < ApplicationController

  def new
    @blog = Blog.new

  end

  def create

  end

  def show
    @blog = Blog.find(params[:id])

  end
end