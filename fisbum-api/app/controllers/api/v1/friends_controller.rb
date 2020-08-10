class Api::V1::FriendsController < ApplicationController
    def index
    friends=Friend.all
    render json: friends
    end

   def destroy
   friend=Friend.find(params[:id])
   friend.destroy
   end

#    def create
#     u1=User.find(unfriend_params[:user_id])
#     f1=u1.friends.find do |f|
#         f.my_friend_id==unfriend_params[:my_friend_id]
#     end

#     u2=User.find(unfriend_params[:my_friend_id])
#     f2=u2.friends.find do |f|
#         f.my_friend_id==unfriend_params[:user_id]
#     end
#     f2.destroy
#     f1.destroy
#     render json: 'something!'
#    end

#    private

#    def unfriend_params
#     params.require(:friends).permit(:user_id, :my_friend_id)
#    end
end
