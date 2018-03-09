class Message
  include ActiveModel::Model
    include ActiveModel::Conversion
    include ActiveModel::Validations

    attr_accessor :name, :email, :body
    validates :name, :email, :body, presence: true
end
