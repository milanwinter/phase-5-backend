class ResortsController < ApplicationController

    skip_before_action :authorized

    def index
        resorts = Resort.all

        render json: resorts
    end

    def show
        resort = Resort.find(params[:id])

        render json: resort, :include => {:reviews => {:only => [:title,:rating,:content]}}
    end



end
