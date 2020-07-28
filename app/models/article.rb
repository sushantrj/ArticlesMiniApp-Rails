class Article < ApplicationRecord
  #This is model created for Articles
  #we can access the data using getters and setters
  validates :title, presence: true, length: {minimum: 5, max: 20}
  validates :description, presence: true, length: {minimum: 10, max: 300}
end