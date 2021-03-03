class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def profile
        user = current_user
        render json: user, :include => {:favorites => {:only => [:resort_id]}}
    end

    def show
        user = User.find(params[:id])
        favorites = user.favorites
        render json: favorites
    end
    
    def create 
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: { user: @user, jwt: @token }, status: :created
        else
            render json: {error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username,:password,:skill)
    end
end
