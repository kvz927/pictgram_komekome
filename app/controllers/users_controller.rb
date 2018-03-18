class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def new
    @index = Index.new
  end


  def create
    #binding.pry
    @user = User.new(user_params)

    #debugger
    if @user.save
      redirect_to root_path, notice:'登録が完了しました'
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password, :password_confirmation, :text)
  end
end
