class TagsController < ApplicationController
  before_action :set_tag, only: [:show]
  
  def search
    tag_name = search_params[:name]
    knowledge_type_id = search_params[:knowledge_type_id]
    
    @tag = Tag.new name: tag_name
    if knowledge_type_id.blank?
      @knowledges = Knowledge.tagged_with(tag_name, :any => true).order(created_at: :desc).page(params[:page])
    else
      @knowledges = Knowledge.tagged_with(tag_name, :any => true).where(knowledge_type_id: knowledge_type_id).order(created_at: :desc).page(params[:page])
    end

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
      params.require(:tag).permit(:name, :id, :knowledge_type_id)
    end
end
