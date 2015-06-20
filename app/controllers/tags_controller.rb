class TagsController < ApplicationController
  before_action :set_tag, only: [:show]
  
  def search_by_name
    tag_name = search_params[:name]
    @knowledges = Knowledge.tagged_with(tag_name)
    @tag = Tag.new name: tag_name
    render :show
  end
  
  def show
    @knowledges = Knowledge.tagged_with(@tag.name)
  end
  
   private
    def set_tag
      @tag = Tag.find(params[:id])
    end
    
    def search_params
      params.require(:tag).permit(:name)
    end
end
