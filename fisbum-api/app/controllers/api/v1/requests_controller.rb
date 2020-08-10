class Api::V1::RequestsController < ApplicationController
    def create
        req=Request.create(request_params)
        requester=User.find(request_params[:requester_id])
        requestee=User.find(request_params[:requesting_id])
        
        if(requestee.pvt)
            val= requestee.requestings.find do |re| 
            re.requesting_id==requester.id
            end
            if(val)
                requester.my_friends << requestee
                requestee.my_friends << requester
            end
        else
            requester.my_friends << requestee
            requestee.my_friends << requester   
        end
        
        render json: requester, :include => [:friends, :my_friends, :requestings, :requesters, :fisbumings, :fisbumers]
        
        is_firend= requester.my_friends.find do |friend|
            friend.id==requestee.id
            end
        if(is_firend)
            req.destroy
        end
    end

    private

    def request_params
        params.require(:request).permit(:requesting_id, :requester_id)
    end
end
