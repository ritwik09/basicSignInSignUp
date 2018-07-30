class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

   acts_as_token_authenticatable
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :accounts, foreign_key: :owner_id	
   has_many :contacts
    # Validates presence of fields.


    validates   :uname,  presence: true,
      #format: { with: $REGEX_CONST[:passworsd] },
      length: { minimum: 5, maximum: 12 }



    #validates   :dob,        presence: true
    # validates   :work,       length: { maximum: 100 }
    # validates   :uid,        allow_blank: false, allow_nil: true, uniqueness: true
    # validates   :education,  length: { maximum: 100 }
    #validates   :full_name,  length: { maximum: 100 }

  
end

