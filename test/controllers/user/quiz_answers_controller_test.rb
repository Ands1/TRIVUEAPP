require "test_helper"

class User::QuizAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_quiz_answer = user_quiz_answers(:one)
  end

  test "should get index" do
    get user_quiz_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_quiz_answer_url
    assert_response :success
  end

  test "should create user_quiz_answer" do
    assert_difference('User::QuizAnswer.count') do
      post user_quiz_answers_url, params: { user_quiz_answer: {  } }
    end

    assert_redirected_to user_quiz_answer_url(User::QuizAnswer.last)
  end

  test "should show user_quiz_answer" do
    get user_quiz_answer_url(@user_quiz_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_quiz_answer_url(@user_quiz_answer)
    assert_response :success
  end

  test "should update user_quiz_answer" do
    patch user_quiz_answer_url(@user_quiz_answer), params: { user_quiz_answer: {  } }
    assert_redirected_to user_quiz_answer_url(@user_quiz_answer)
  end

  test "should destroy user_quiz_answer" do
    assert_difference('User::QuizAnswer.count', -1) do
      delete user_quiz_answer_url(@user_quiz_answer)
    end

    assert_redirected_to user_quiz_answers_url
  end
end
