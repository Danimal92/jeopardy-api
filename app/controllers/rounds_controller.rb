
class RoundsController < ApplicationController
    
    def index
        rounds = Round.all
        render :json => rounds
    
    end

    def show
        round = Round.find(params[:id])
        render :json => round
    end

    def getroundOfUser
        rounds = Round.where(user_id: params[:userId])
        # byebug
        render :json => rounds
    end

    def create
        user = User.find(params[:user_id])
        round = Round.create(set_param)
        user.points = user.points + round.money
        user.save
        render :json => round
    end

    def destroy
        round = Round.find(params[:id])
        round.destroy
    end

    def get_questions
        render :json => (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}})
    end

   



    def get_questions_helper
       array = (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}})
       

       return 
    end
    
    private

    def set_param
        params.require(:round).permit(:user_id, :points, :questions, :money)
    end
end
