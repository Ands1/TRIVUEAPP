class Quiz::TakesurveysController < ApplicationController

    def index
        @takes = Quiz::Question.where(quizzes_id: params[:quiz_id])
    end


    def submit
        puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", params, @status_answer
        respond_to do |format|
            
            format.html { redirect_to @quiz, notice: "PREGUNTAS GUARDADAS" }
        end
    end
end
