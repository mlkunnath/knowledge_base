class TagsController < ApplicationController
  before_action :set_tag, only: [:show]
  
  def search
    tag_name = search_params[:name]
    tag_id = search_params[:id]
    if tag_name
      @knowledges = Knowledge.tagged_with(tag_name)
      @tag = Tag.new name: tag_name
    else 
      @tag = Tag.find(tag_id)
      @knowledges = Knowledge.tagged_with(@tag.name)
    end
    
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
      params.require(:tag).permit(:name, :id)
    end
end
