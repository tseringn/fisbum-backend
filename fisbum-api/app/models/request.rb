class Request < ApplicationRecord
   
    belongs_to :requester, class_name: 'User'
    belongs_to :requesting, class_name: 'User'
end
