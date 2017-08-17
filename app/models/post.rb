class Post < ActiveRecord::Base
    #Comments를 가지고 있다.
    has_many :comments, dependent: :destroy
end
