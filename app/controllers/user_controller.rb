class UserController < ApplicationController
  # before_actionにensure_correct_userメソッドを指定してください
  
  def index
  end

  def mypage
  	@user = User.find_by(id: session[:user_id])
    @menue = User.find_by(id: session[:menue_id])
  end

  def edit
  	@user = User.find_by(id: params[:id])
  end
  
  def update
  	@user = User.find_by(id: params[:id])
  	@user.user_name = params[:user_name]
  	@user.belong = params[:belong]
  	@user.event = params[:event]
  	@user.best = params[:best]
  	@user.result = params[:result]
  	@user.target = params[:target]
  	@user.apeal = params[:apeal]
  	if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/user/#{@user.id}")
    else
      render("user/edit")
    end
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
    flash[:notice] = "権限がありません"
    redirect_to("/posts/index")
    end
  end 



end
