class TagsController < ApplicationController
  before_action :set_tag, only: [:show]
  
  def search
    tag_name = search_params[:name]
    tag_id = search_params[:id]
    if tag_name
      @knowledges = Knowledge.tagged_with(tag_name).order(created_at: :desc)
      @tag = Tag.new name: tag_name
=begin
      @search_result = PgSearch.multisearch(tag_name)

      @knowledges = Array.new
      @search_result.find_each do |result|
        case result.searchable_type
        when "ActsAsTaggableOn::Tag"
          knowledges_from_tag = Knowledge.tagged_with result.content
          @knowledges.concat knowledges_from_tag
        when "Knowledge"
          @knowledges.push result.searchable
        end
      end
      
      @knowledges = @knowledges.uniq{|know| know.id}
=end      
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
