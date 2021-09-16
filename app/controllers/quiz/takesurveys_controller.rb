class Quiz::TakesurveysController < ApplicationController

    def index
        @takes = Quiz::Question.where(quizzes_id: params[:quiz_id])
    end


    def destroy
        answer  = self.question.status
        user_answer = Quiz::Question.status
        puts "---------------------------------", answer, "-------------------------------"
    end
end
