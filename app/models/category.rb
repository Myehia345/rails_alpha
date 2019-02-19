class Category < ActiveRecord::Base
   
   validates :name , presence: true , uniqueness: {case_sensetive: false} ,
   length: {minimum: 3, maximum: 25}
   
end