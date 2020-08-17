class Api::V1::UsersController < ApplicationController
    def index
    users=User.all
    render json: users, :include => [:friends, :my_friends, :requestings, :requesters, :fisbumings, :fisbumers]
    end

    def show
    user=User.find(params[:id])
    render json: user, :include => [:friends, :my_friends, :requestings, :requesters, :fisbumings, :fisbumers]
    end

    def search_user
        user=User.find_by(username: params[:id])
        if !user 
        user=User.find_by(email: params[:id])
        end
        if !user 
            user=User.find_by(phone_number: params[:id])
        end
        if !user 
            user[:message]=''
        end
        if user.class!=String
            render json: user, :include => [:friends, :my_friends, :requestings, :requesters, :fisbumings, :fisbumers]
        else render json: user
        end
    end

    def search
    
        result = User.find_by(username: params[:id])
        if !result
            result = User.where("first_name ILIKE '#{params[:id]}%'")
        end
    
        if result
            render json: result
        else render json: 'null'
        end
       
    end
    def update
        user=User.find(params[:id])
        user.update(user_params)
        render json: user, :include => [:friends, :my_friends, :requestings, :requesters, :fisbumings, :fisbumers]
        end
    
    private 

    def user_params
        params.require(:user).permit!
    end


end
