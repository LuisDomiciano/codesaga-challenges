require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    type_object = attributes.class
    if type_object.to_s == 'Array'
      attributes.map { |item| Recipe.new(
        title: item['title'],
        description: item['description'],
        ingredients: item['ingredients'],
        cook_time: item['cook_time'],
        featured: item['featured']
      )
      }
    else 
      Recipe.new(
        title: attributes['title'],
        description: attributes['description'],
        ingredients: attributes['ingredients'],
        cook_time: attributes['cook_time'],
        featured: attributes['featured']
      )
    end
  end

  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end


