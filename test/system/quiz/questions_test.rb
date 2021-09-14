require "application_system_test_case"

class Quiz::QuestionsTest < ApplicationSystemTestCase
  setup do
    @quiz_question = quiz_questions(:one)
  end

  test "visiting the index" do
    visit quiz_questions_url
    assert_selector "h1", text: "Quiz/Questions"
  end

  test "creating a Question" do
    visit quiz_questions_url
    click_on "New Quiz/Question"

    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit quiz_questions_url
    click_on "Edit", match: :first

    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit quiz_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
