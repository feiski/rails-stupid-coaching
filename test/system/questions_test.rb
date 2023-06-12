# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in "answer", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Saying Hello? yields a silly response from the coach" do
    visit ask_url
    fill_in "answer", with: "Hello?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "Saying I am going to work yiels a great response from the coach" do
    visit ask_url
    fill_in "answer", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end
