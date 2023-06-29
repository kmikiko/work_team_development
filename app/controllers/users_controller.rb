class UsersController < ApplicationController
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

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :profile, :password, :password_confirmation)
  end

end
