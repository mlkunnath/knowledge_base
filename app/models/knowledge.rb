class Knowledge < ActiveRecord::Base
  include PgSearch
  
  multisearchable :against => :show_name
  
	belongs_to :knowledge_type
	
	acts_as_taggable
  has_attached_file :file
  do_not_validate_attachment_file_type :file
  validates :file, :attachment_presence => true
	validates_with AttachmentSizeValidator, :attributes => :file, :less_than => 101.megabytes
	
  validates :description, :presence => true, :length => {:maximum => 250 }
  validates :knowledge_type_id, :presence => true
  validates_presence_of :tag_list
  
  
end
