class FavoritesController < ApplicationController

    skip_before_action :authorized
    def create
        favorite = Favorite.create(favorites_params)
        if favorite.save
            render json: favorite
        else
            render json: {:errors => favorite.errors.full_messages}
        end
    end

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def destroy
        favorite=Favorite.find(params[:id])
        favorite.destroy()
        render json: {message: "favorite destroyed yo"}
    end
    private

    def favorites_params
        params.require(:favorite).permit(:user_id, :resort_id)
    end
end
