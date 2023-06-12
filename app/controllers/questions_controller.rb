# frozen_string_literal: true

# Handles the logic for asking and answering questions.
class QuestionsController < ApplicationController
  def ask; end

  def answer
    # Assign the value of the 'answer' parameter from the form to the '@question' instance variable
    @question = params[:answer]

    # Check if the value of '@question' is exactly 'I am going to work'
    if @question == 'I am going to work'
      # If the above condition is true, assign 'Great!' to the '@answer' instance variable
      @answer = 'Great!'
      # Check if the value of '@question' includes a question mark, with the safe navigation operator to handle nil values
    elsif @question&.include?('?')
      # If the above condition is true, assign this message to the '@answer' instance variable
      @answer = 'Silly question, get dressed and go to work!'
    else
      # If none of the above conditions are true, assign this message to the '@answer' instance variable
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
