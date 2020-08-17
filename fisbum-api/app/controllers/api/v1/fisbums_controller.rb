class Api::V1::FisbumsController < ApplicationController
    def get_fisbum
        puts params[:fisbuming_id]
    fisbum=Fisbum.where("fisbuming_id=#{fisbum_params[:fisbuming_id]} AND fisbumer_id=#{fisbum_params[:fisbumer_id]}")
    
    render json: fisbum
    end

    def create
    fisbumee=User.find(params[:fisbuming_id])
    fisbumer=User.find(params[:fisbumer_id])
   
    fisbumee.fisbumers << fisbumer
       is_fisbumed=fisbumee.fisbumings.find do |fs|
                fs.id==fisbumer.id
       end 
        if(is_fisbumed)
            my_friend=fisbumer.friends.find do |frd|
                frd.my_friend_id==fisbumee.id
            end
            me_friend=fisbumee.friends.find do |frd|
                frd.my_friend_id==fisbumer.id
            end
            my_friend.friendship_score +=599
            my_friend.save
            me_friend.friendship_score +=599
            me_friend.save
            fisbumer.fisbum_count +=111
            fisbumer.save
            fisbumee.fisbum_count +=111
            fisbumee.save
        
            f1= Fisbum.where("fisbumer_id=#{fisbumer.id} AND fisbuming_id=#{fisbumee.id}")
            f2= Fisbum.where("fisbuming_id=#{fisbumer.id} AND fisbumer_id=#{fisbumee.id}")
            
            puts '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
            puts f1[0].id
            puts f2.length
            puts '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'

            f1[0].destroy
            f2[0].destroy
      
        end
    
    render  json: fisbumer, :include => [:friends, :my_friends, :requestings, :requesters, :fisbumings, :fisbumers]
     
    end


    private

    def fisbum_params
        params.require(:fisbum).permit(:fisbuming_id, :fisbumer_id)
    end
end
