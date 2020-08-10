class Friend < ApplicationRecord
   belongs_to :my_friend, class_name: 'User'

end
