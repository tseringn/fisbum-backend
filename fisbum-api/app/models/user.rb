class User < ApplicationRecord
    #for ongoing friend request
    has_many :requester_users, foreign_key: :requester_id, class_name: 'Request'
    has_many :requestings, through: :requester_users
    #for incoming friend request
    has_many :requesting_users, foreign_key: :requesting_id, class_name: 'Request'
    has_many :requesters, through: :requesting_users
     #for incoming fisbum
     has_many :fisbumer_users, foreign_key: :fisbumer_id, class_name: 'Fisbum'
     has_many :fisbumings, through: :fisbumer_users
     #for ongoing fisbum
     has_many :fisbuming_users, foreign_key: :fisbuming_id, class_name: 'Fisbum'
     has_many :fisbumers, through: :fisbuming_users
    #for user's friends
    has_many :my_friend_users, foreign_key: :user_id, class_name: 'Friend'
    has_many :my_friends, through: :my_friend_users
    
    has_many :user_friend_users, foreign_key: :my_friend_id, class_name: 'Friend'
    has_many :user_friends, through: :user_friend_users
    has_many :friends



    has_one_attached :profile_pic
  
end
