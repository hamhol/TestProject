class Searchparameter
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  attr_accessor :name, :email, :logins_from, :logins_to

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def id
    "0"
  end

  def to_param
    super
  end

  def persisted?
    true
  end
end