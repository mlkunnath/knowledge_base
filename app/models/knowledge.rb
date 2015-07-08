class Knowledge < ActiveRecord::Base
  include PgSearch
  
  multisearchable :against => :show_name
  
	belongs_to :knowledge_type
	
	acts_as_taggable
	
  has_attached_file :file
  do_not_validate_attachment_file_type :file
  validates :file, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :file
	validates_with AttachmentSizeValidator, :attributes => :file, :less_than => 102.megabytes
  
end
