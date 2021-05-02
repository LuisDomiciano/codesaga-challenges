class Recipe
  
    attr_accessor :title, :description, :ingredients, :cook_time, :featured
  
  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end
  
  def self.from_json(json_file)
    file = JSON.parse(File.read(json_file))
    Recipe.new(title: file['title'], description: file['description'], ingredients: file['ingredients'], cook_time: file['cook_time'], featured: file['featured'])
  end
  
end

