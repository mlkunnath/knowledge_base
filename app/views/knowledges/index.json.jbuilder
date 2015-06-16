json.array!(@knowledges) do |knowledge|
  json.extract! knowledge, :id, :show_name, :description, :file, :tag_id
  json.url knowledge_url(knowledge, format: :json)
end
