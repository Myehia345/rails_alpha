class User < ActiveRecord::Base
    validates :username, presence: true, 
    uniqueness: { case_sensetive: false },
    length: { minimum: 3, maximum:25 }
    
    Valid_Email_Regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :email, presence: true,length: { maximum: 100 },
    uniqueness: { case_sensetive: false },
    format: {with: Valid_Email_Regex }
              
    
end