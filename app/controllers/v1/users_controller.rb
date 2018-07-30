
	class V1::UsersController < ApplicationController
	#class UsersController < ApplicaionController

	def index
		@users=User.all

		render json: @users.order(created_at: :DESC), status: :ok
	end

	
		def create
			@user=User.new(user_params)

			#byebug

			if @user.save
				render json: {user: @user.as_json(only: [:email,:uname,:password]), message: "User created with above email id and password"}

				#render :create
			else
				render json: {user: @user.as_json(only: [:email,:password]), message: "Invalid Details"}, status: :unauthorized

				#head(:unprocessable_entity)
			end

		end


		private

		def user_params
			#byebug
			params.require(:user).permit(:uname,:email, :password)
		end

	end
