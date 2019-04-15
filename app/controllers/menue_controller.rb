class MenueController < ApplicationController
  def new
  	@menues = Menue.new

  end

  def create
  	@menues = Menue.new(
      title: params[:title],
      frequency: params[:frequency],
      stress: params[:stress],
      comment: params[:comment],
      user_id: @current_user.id,
      menue_event: params[:menue_event],
      menue_level: params[:menue_level]
    )
    if @menues.save
      session[:menue_id] = @menues.id
      @user = User.find_by(id: session[:user_id])
      flash[:notice] = "新規投稿を公開しました"
      redirect_to("/user/#{@user.id}")
    else
      render("menue/new")
    end

  end

  def back
  	@user = User.find_by(id: session[:user_id])
  	redirect_to("/user/#{@user.id}")

  end

  def show
  	@menue = Menue.find_by(id: session[:menue_id])
  	
  end

end
