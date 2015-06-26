module KnowledgesHelper
  
  def get_file_extention(file_name)
    file_name_parts = file_name.split(".")
    file_extention_rails = file_name_parts.last
    file_extention_rails_parts = file_extention_rails.split("?")
    file_extention = file_extention_rails_parts.first
    
    if file_extention
      file_extention
    else
      "unknow"
    end
  end
  
end
