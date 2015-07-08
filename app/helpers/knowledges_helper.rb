module KnowledgesHelper
  
  def get_file_extention(url)
    file_name_parts = url.split(".")
    file_extention_rails = file_name_parts.last
    file_extention_rails_parts = file_extention_rails.split("?")
    file_extention = file_extention_rails_parts.first
    
    if file_extention
      file_extention
    else
      "unknow"
    end
  end
  
  def get_file_name_without_extention(url)
    
    clear_file_name = File.basename(url, File.extname(url))
    clear_file_name.gsub!(/[^ A-Za-z0-9\_\-\.]/, '')
    
    clear_file_name
  end
  
  def get_file_name(url)
    
    uri = URI.parse(url)
    clear_file_name = File.basename(uri.path)
    clear_file_name.gsub!(/[^ A-Za-z0-9\_\-\.]/, '')
    
    clear_file_name
  end
  
end
