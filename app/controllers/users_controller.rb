class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update]

	def show
		@user = User.find(params[:id])
		@book = Book.new
		@books = @user.books
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "UserInfo was successfully updated."
			redirect_to user_path(current_user.id)
		else
			render "edit"
		end

	end

	def index
		@user = User.find(current_user.id)
		@book = Book.new
		@users = User.all
	end

	private

	def user_params
		params.require(:user).permit(:name, :profile_text, :profile_image)
	end

	def correct_user
		user = User.find(params[:id])
		if current_user != user
			redirect_to user_path(current_user)
		end
	end
end
 