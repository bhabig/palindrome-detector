class BobsPalindromesController < ApplicationController
  def home
  end

  def input_check

    @value = palindrome_params[:input]
    flash[:notice] = BobsPalindrome.input_check(@value)
    session[:value] = @value
    redirect_to root_path

  end

  private

  def palindrome_params
    params.require(:palindrome).permit(:input)
  end
end
