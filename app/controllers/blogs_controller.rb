class BlogsController < ApplicationController
 

  def new
    @blog = Blog.new

  end

  def create

  end

  def show
    @blog = Blog.find(params[:id])

  end
  
   def edit
    @blog = Blog.find(params[:id])
  end
end

def update
  @blog = Blog.find(params[:id])
  if @blog.update(blog_params)
    redirect_to blogs_path, notice: "編集します"
  else
    render :edit
  end
end

def destroy
  @blog.destroy
  redirect_to blogs_path, notice: "削除しました"
end

def blog_params
  params.require(:blog).permit(:photo, :title, :content,)
end
end

