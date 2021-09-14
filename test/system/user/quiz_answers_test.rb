require "application_system_test_case"

class User::QuizAnswersTest < ApplicationSystemTestCase
  setup do
    @user_quiz_answer = user_quiz_answers(:one)
  end

  test "visiting the index" do
    visit user_quiz_answers_url
    assert_selector "h1", text: "User/Quiz Answers"
  end

  test "creating a Quiz answer" do
    visit user_quiz_answers_url
    click_on "New User/Quiz Answer"

    click_on "Create Quiz answer"

    assert_text "Quiz answer was successfully created"
    click_on "Back"
  end

  test "updating a Quiz answer" do
    visit user_quiz_answers_url
    click_on "Edit", match: :first

    click_on "Update Quiz answer"

    assert_text "Quiz answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Quiz answer" do
    visit user_quiz_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quiz answer was successfully destroyed"
  end
end
