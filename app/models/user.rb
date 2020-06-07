class User < ApplicationRecord
    has_many :games, dependent: :destroy
    has_many :scores, through: :games
    has_many :elements, through: :games
    has_many :numbers, through: :games
    has_many :ountries, through: :games
    has_many :presidents, through: :games
    has_secure_password
    validates_presence_of :username, :name, :age, :email
    validates_uniqueness_of :username, :email
    validates :username, :length  => {:in => 3..30}
    validates :email, confirmation: { case_sensitive: false }

    PASSWORD_UPPERCASE_FORMAT = /\A
        (?=.*[A-Z])
    /x

    PASSWORD_LOWERCASE_FORMAT = /\A
        (?=.*[a-z])
    /x

    PASSWORD_NUMBER_FORMAT = /\A
        (?=.*\d)
    /x

    PASSWORD_SYMBOL_FORMAT = /\A
        (?=.*[[:^alnum:]])
    /x

    validates :password, format: {with: PASSWORD_UPPERCASE_FORMAT, :message => "Password must include at least 1 uppercase letter."}
    validates :password, format: {with: PASSWORD_LOWERCASE_FORMAT, :message => "Password must include at least 1 lowercase letter."}
    validates :password, format: {with: PASSWORD_NUMBER_FORMAT, :message => "Password must include at least 1 number."}
    validates :password, format: {with: PASSWORD_SYMBOL_FORMAT, :message => "Password must include at least 1 special character."}
    validates :password, length: { in: 6..20 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    # validates :password, confirmation: true
    # validates :password_confirmation, presence: true
end
