class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new  #新しいユーザーを作るフォームのため。
    @user = User.new
  end
  
  def create  #newで送られたデータがcreateに来る。
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the SNS APP!"
      redirect_to @user
    else
      flash[:danger] = "Why can't I login? ?"
      render 'new'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                :password_confirmation)
  end
end
