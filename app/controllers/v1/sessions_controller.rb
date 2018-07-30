class V1::SessionsController < ApplicationController

def create
	@u1=User.where(email: params[:email]).first
	if @u1 && @u1.valid_password?(params[:password])
		#byebug

		#render :create, status: :created
	    render json: {user: @u1.as_json(only: [:email,:authentication_token]), message: "Welcome!!You are Signed In."}

	else
		render json: {user: @u1.as_json(only: [:email]), message: "Invalid emailId or password!!!Please signUp with above email Id."},status: :unauthorized

		#head(:unauthorized)
		#render json: u1.as_json(only: [:id, :email]), status: :ok

	end 
end

def destroy

end


end
 