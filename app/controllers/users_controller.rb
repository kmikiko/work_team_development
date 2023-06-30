class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  
  def edit
    @user = User.find(params[:id])
    if user == current_user
      render "edit"
    elsif
      redirect_to blogs_path
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.create(user_params)
      redirect_to user_path(@user), notice: "編集しました"
    elsif 
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice:"削除しました"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "登録が完了しました!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :profile,
                                 :password_confirmation)
  end
end
