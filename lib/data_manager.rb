require "csv"

class DataManager
  attr_reader :entities
  private     :entities

  def initialize(entities = %i[authors books magazines])
    @entities = entities
  end

  def import_csv!
    entities.each do |entity|
      import_and_store_csv!(entity)
    end
  end

  def import_and_store_csv!(entity)
    attributes_list = CSV.parse(File.read("./data/#{entity}.csv"), headers: true, col_sep: ";").map(&:to_h)
    model = Class.const_get(entity.to_s.singularize.capitalize)
    attributes_list.each do |attributes|
      attributes = normalize_keys(attributes)
      if attributes["authors"].present?
        attributes["authors"] = Author.where(email: attributes["authors"])
      end
      model.create(attributes)
    end
  end

  private

  def normalize_keys(hsh)
    hsh.map do |k, v|
      [
        k.split("").reject { |ch| ch.ord == 65279 }.join,
        v
      ]
    end.to_h
  end
end
