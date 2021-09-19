class Quiz::Question::AnswersController < ApplicationController
  before_action :set_quiz_question_answer, only: %i[ show edit update destroy ]

  # GET /quiz/question/answers or /quiz/question/answers.json
  def index
    @quiz_question_answers = Quiz::Question::Answer.all
    @match = Quiz::Question.find_by_id(params[:question_id])
  end

  # GET /quiz/question/answers/1 or /quiz/question/answers/1.json
  def show
  end

  # GET /quiz/question/answers/new
  def new
    @quiz_question_answer = Quiz::Question::Answer.new
  end

  # GET /quiz/question/answers/1/edit
  def edit
  end

  # POST /quiz/question/answers or /quiz/question/answers.json
  def create
    @quiz_question_answer = Quiz::Question::Answer.new(quiz_question_answer_params)
    @quiz_question_answer.quiz_question = Quiz::Question.find_by_id(params[:question_id])
    @quiz_question_answer.user = current_user

    respond_to do |format|
      if @quiz_question_answer.save
        format.html { redirect_to quiz_question_url, notice: "Answer was successfully created." }
        format.json { render :show, status: :created, location: @quiz_question_answer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz_question_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz/question/answers/1 or /quiz/question/answers/1.json
  def update
    respond_to do |format|
      if @quiz_question_answer.update(quiz_question_answer_params)
        format.html { redirect_to @quiz_question_answer, notice: "Answer was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz_question_answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz_question_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz/question/answers/1 or /quiz/question/answers/1.json
  def destroy
    @quiz_question_answer.destroy
    respond_to do |format|
      format.html { redirect_to quiz_question_answers_url, notice: "Answer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_question_answer
      @quiz_question_answer = Quiz::Question::Answer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_question_answer_params
      params.fetch(:quiz_question_answer, {}).permit(:status)
    end
end
