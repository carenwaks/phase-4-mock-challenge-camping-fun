class SignupsController < ApplicationController
    def create 
        signup = Signup.create(signup_params)  
        if camper.save
            render json: signup, status: :created
        else
            render json: {error: signup.errors.full_messages}, status: :unprocessable_entity
        end          
    end

    private
    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
