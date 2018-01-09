class BobsDromesController < ApplicationController
  def home
    if palindrome_params
      @value = palindrome_params[:input]
      flash[:notice] = BobsDrome.input_check(@value)
      render :home and return
    end
  end

  # def input_check
  #
  # end

  private

  def palindrome_params
    params.require(:palindrome).permit(:input) if params[:palindrome]
  end
end
