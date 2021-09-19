require "application_system_test_case"

class Quiz::Question::AnswersTest < ApplicationSystemTestCase
  setup do
    @quiz_question_answer = quiz_question_answers(:one)
  end

  test "visiting the index" do
    visit quiz_question_answers_url
    assert_selector "h1", text: "Quiz/Question/Answers"
  end

  test "creating a Answer" do
    visit quiz_question_answers_url
    click_on "New Quiz/Question/Answer"

    click_on "Create Answer"

    assert_text "Answer was successfully created"
    click_on "Back"
  end

  test "updating a Answer" do
    visit quiz_question_answers_url
    click_on "Edit", match: :first

    click_on "Update Answer"

    assert_text "Answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer" do
    visit quiz_question_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer was successfully destroyed"
  end
end
