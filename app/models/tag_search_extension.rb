module TagSearchExtension
  def self.included(tag_class)
    tag_class.send(:include, PgSearch)
    tag_class.multisearchable :against => :name
  end
end