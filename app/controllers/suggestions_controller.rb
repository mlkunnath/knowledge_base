class SuggestionsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.request = request
    if @suggestion.deliver
      flash[:notice] = 'Gracias por comunicarte con nosotros!.'
    else
      flash[:alert] = 'No hemos podido enviar tu mensaje, intenta nuevamente en un rato.'
    end
    
    redirect_to root_path
  end
  
  def suggestion_params
    params.require(:suggestion).permit(:name, :email, :message)
  end
  
end
