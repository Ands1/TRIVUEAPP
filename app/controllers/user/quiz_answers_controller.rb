class User::QuizAnswersController < ApplicationController
  before_action :set_user_quiz_answer, only: %i[ show edit update destroy ]

  # GET /user/quiz_answers or /user/quiz_answers.json
  def index
    @user_quiz_answers = User::QuizAnswer.all
  end

  # GET /user/quiz_answers/1 or /user/quiz_answers/1.json
  def show
  end

  # GET /user/quiz_answers/new
  def new
    @user_quiz_answer = User::QuizAnswer.new
  end

  # GET /user/quiz_answers/1/edit
  def edit
  end

  # POST /user/quiz_answers or /user/quiz_answers.json
  def create
    @user_quiz_answer = User::QuizAnswer.new(user_quiz_answer_params)
    @user_quiz_answer.user = current_user

    respond_to do |format|
      if @user_quiz_answer.save
        format.html { redirect_to @user_quiz_answer, notice: "Quiz answer was successfully created." }
        format.json { render :show, status: :created, location: @user_quiz_answer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_quiz_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/quiz_answers/1 or /user/quiz_answers/1.json
  def update
    respond_to do |format|
      if @user_quiz_answer.update(user_quiz_answer_params)
        format.html { redirect_to @user_quiz_answer, notice: "Quiz answer was successfully updated." }
        format.json { render :show, status: :ok, location: @user_quiz_answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_quiz_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/quiz_answers/1 or /user/quiz_answers/1.json
  def destroy
    @user_quiz_answer.destroy
    respond_to do |format|
      format.html { redirect_to user_quiz_answers_url, notice: "Quiz answer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_quiz_answer
      @user_quiz_answer = User::QuizAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_quiz_answer_params
      params.fetch(:user_quiz_answer, {})
    end
end
