class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def index
    @users = User.all
  end

  def edit
    @user = current_user
    @user
    @user #test
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: '更新成功！' #show画面に遷移
    else
      render :edit, notice: '失敗！'
    end
  end

  def test
    # Railsが自動的に対応するビューを表示
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :postal_code, :address, :bio)
  end
end
