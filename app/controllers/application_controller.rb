class ApplicationController < ActionController::Base
  protect_from_forgery

  	private

  	def auth
 	 	@user = Users.find_by_user_name(params[:user_name])
		@pass = Users.find_by_password(params[:password])

		if @user.id == @pass.id
			redirect_to projects_path

		else
			redirect_to new_user_session_path
		end
	end
end