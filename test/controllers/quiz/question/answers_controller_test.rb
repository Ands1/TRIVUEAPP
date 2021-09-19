require "test_helper"

class Quiz::Question::AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_question_answer = quiz_question_answers(:one)
  end

  test "should get index" do
    get quiz_question_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_question_answer_url
    assert_response :success
  end

  test "should create quiz_question_answer" do
    assert_difference('Quiz::Question::Answer.count') do
      post quiz_question_answers_url, params: { quiz_question_answer: {  } }
    end

    assert_redirected_to quiz_question_answer_url(Quiz::Question::Answer.last)
  end

  test "should show quiz_question_answer" do
    get quiz_question_answer_url(@quiz_question_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_question_answer_url(@quiz_question_answer)
    assert_response :success
  end

  test "should update quiz_question_answer" do
    patch quiz_question_answer_url(@quiz_question_answer), params: { quiz_question_answer: {  } }
    assert_redirected_to quiz_question_answer_url(@quiz_question_answer)
  end

  test "should destroy quiz_question_answer" do
    assert_difference('Quiz::Question::Answer.count', -1) do
      delete quiz_question_answer_url(@quiz_question_answer)
    end

    assert_redirected_to quiz_question_answers_url
  end
end
