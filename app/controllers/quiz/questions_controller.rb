class Quiz::QuestionsController < ApplicationController
  before_action :set_quiz_question, only: %i[ show edit update destroy ]

  # GET /quiz/questions or /quiz/questions.json
  def index
    @quiz_questions = Quiz::Question.where(quizzes_id: params[:quiz_id])
  end

  # GET /quiz/questions/1 or /quiz/questions/1.json
  def show
  end

  # GET /quiz/questions/new
  def new
    @quiz_question = Quiz::Question.new
  end

  # GET /quiz/questions/1/edit
  def edit
  end

  # POST /quiz/questions or /quiz/questions.json
  def create
    @quiz_question = Quiz::Question.new(quiz_question_params)
    @quiz_question.quiz = Quiz.find_by_id(params[:quiz_id])

    respond_to do |format|
      if @quiz_question.save
        format.html { redirect_to new_quiz_question_path, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @quiz_question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz/questions/1 or /quiz/questions/1.json
  def update
    respond_to do |format|
      if @quiz_question.update(quiz_question_params)
        format.html { redirect_to @quiz_question, notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz_question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz/questions/1 or /quiz/questions/1.json
  def destroy
    @quiz_question.destroy
    respond_to do |format|
      format.html { redirect_to quiz_questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_question
      @quiz_question = Quiz::Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_question_params
      params.fetch(:quiz_question, {}).permit(:question, :status)
    end
end
