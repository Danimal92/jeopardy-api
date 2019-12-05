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
        user.points = user.points + Round.money
        user.save
        render :json => round
    end

    def destroy
        round = Round.find(params[:id])
        round.destroy
    end

    # def get_questions
    #     render :json => 
    # end

    # def get_questions_helper
        
    # end
    
    private

    def set_param
        params.require(:round).permit(:user_id, :points, :questions, :money)
    end
end
