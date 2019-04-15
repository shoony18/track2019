class LoginController < ApplicationController
   before_action :forbid_login_user, {only: [:new, :create, :confirm, :form]}
 
  def entrance
  end
  
  def form
    
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(
      real_name: params[:real_name],
      user_name: params[:user_name],
      belong: params[:belong],
      event: params[:event],
      tel: params[:tel],
      pass: params[:pass],
      best: params[:best],
      result: params[:result],
      target: params[:target],
      apeal: params[:apeal]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/user/#{@user.id}")
    else
      render("user/new")
    end

  end

  def confirm
  	@user = User.find_by(tel: params[:tel],pass: params[:pass])
  	if @user
  		session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/user/#{@user.id}")
    else 
    	@error_message = "電話番号またはパスワードが間違っています"
    	@tel = params[:tel]
    	@pass = params[:pass]
    	render("login/form")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login/form")
  end


  
end
