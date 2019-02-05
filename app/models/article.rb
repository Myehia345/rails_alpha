class Article < ActiveRecord::Base
    belongs_to :user
    validates :title ,presence: true, length: {minimum: 3, maximum: 50}
    validates :descripton ,presence: true ,length: {minimum: 10}
end