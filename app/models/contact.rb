class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  validates :name,
            :length => {:in => 2..50}

  validates :email,
            :format => { :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }

  validates :message,
            :length => {:in => 10..750}

  attr_accessor :name, :subject, :message, :email

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
