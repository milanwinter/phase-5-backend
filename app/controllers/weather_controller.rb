class WeatherController < ApplicationController
    skip_before_action :authorized

  

    def show
        resort = Resort.find_by(name: params["name"])
        resord_key = resort.api_id

        response = RestClient.get("http://api.powderlin.es/station/791:WA:SNTL?days=30")

        
        render json: response
    end



    def weatherparams
        params.require(:resort).permit(:name)
    end
    
end