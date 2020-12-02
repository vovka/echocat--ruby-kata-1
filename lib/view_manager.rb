class ViewManager
  attr_reader :entities
  private     :entities

  def initialize(entities = %i[books magazines])
    @entities = entities
  end

  def display!(as: :plain)
    entities.each do |entity|
      model_name = entity.to_s.singularize.capitalize
      model = Class.const_get(model_name)
      view_class_name = "View#{model_name}#{as.to_s.capitalize}"
      if Class.const_defined?(view_class_name)
        view_class = Class.const_get(view_class_name)
        view = view_class.new
        model.find_each { |object| view.display!(object) }
      end
    end
  end
end
