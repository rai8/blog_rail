class Article < ApplicationRecord
    #palce our validations in the models before it is saved
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
