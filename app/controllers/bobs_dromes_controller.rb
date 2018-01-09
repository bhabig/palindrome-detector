class BobsDromesController < ApplicationController
  def home
  end

  def input_check
    @value = palindrome_params[:input]
    flash[:notice] = BobsDrome.input_check(@value)
    redirect_to root_path
  end

  private

  def palindrome_params
    params.require(:palindrome).permit(:input)
  end
end
