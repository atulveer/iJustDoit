class User < ActiveRecord::Base
  validates_presence_of :name,:allow_nil => true, :allow_blank => true
  validates_presence_of :email,:allow_nil => true, :allow_blank => true
  validates_presence_of :cripted_password ,:allow_nil => true, :allow_blank => true 
  validates_format_of :name, :with=>/^[0-9A-Za-z-*]*$/s , :message => 'Please enter valid name!'
  validates_format_of :email, :with=>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/is, :message => 'Please enter valid email!'
  validates_uniqueness_of :email, :name
  has_many :tasks
  
  def self.authenticate(uname,pass)
    user = self.find_by_email(uname)
     unless user.nil?
       if  user.crypted_password == pass 
           return user 
       else 
         return nil 
       end  
     end
   end
end
