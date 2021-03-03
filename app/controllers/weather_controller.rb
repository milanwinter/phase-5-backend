class WeatherController < ApplicationController
    skip_before_action :authorized

  
    def index
        app_id = ENV["APP_ID"]
        app_key = ENV["APP_KEY"]

        weather_array = []
        resorts = Resort.all
        resorts.each do |resort| 
            resort_key = resort.api_id
            response = RestClient.get("http://api.weatherunlocked.com/api/resortforecast/#{resort_key}?app_id=#{app_id}&app_key=#{app_key}")
            weather_array.push(response)
        end
        render json: weather_array
    end

    
    def show

        app_id = ENV["APP_ID"]
        app_key = ENV["APP_KEY"]

        resort = Resort.find(params[:id])
        resort_key = resort.api_id
        


        response = RestClient.get("http://api.weatherunlocked.com/api/resortforecast/#{resort_key}?app_id=#{app_id}&app_key=#{app_key}")
        
        render json: response
    end



    def weatherparams
        params.require(:resort).permit(:name)
    end
    
end