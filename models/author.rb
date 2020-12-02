class Author < ActiveRecord::Base
  has_and_belongs_to_many :books
  has_and_belongs_to_many :magazines

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
