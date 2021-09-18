class Quiz::TakesurveysController < ApplicationController

    def index
        @quiz = Quiz.find_by_id(params[:quiz_id])
        @takes = Quiz::Question.where(quizzes_id: params[:quiz_id])
    end


    def submit
        puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", params, @status_answer
        respond_to do |format|
            
            format.html { redirect_to quiz_takesurveys_url, notice: "PREGUNTAS GUARDADAS" }
        end
    end
end
