require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friend.destroy_all
Request.destroy_all
Fisbum.destroy_all

us1=User.create(first_name: "Tsering", last_name: "Norbu", dob: "11/03/1994", email: 'thetseringnorbu@gmail.com', phone_number: '15513994282', pvt: 'false', country: 'US', bio: 'Dreamer, liver, lover', status: 'building this app!', username: 'bhutsenor', password: '123', img_url: 'https://ca.slack-edge.com/T02MD9XTF-U012Z0KTBTP-ccd5ca6c499c-512', longitude: '40.7831' ,latitude: '73.9712', sex: 'male')
us2=User.create(first_name: "Kalsang", last_name: "Palmo", dob: "12/01/1993", email: 'kalsangpalmo4013@gmail.com', phone_number: '13474216848', pvt: 'false', country: 'US', bio: 'Dreamer, liver, lover', status: 'helping to build this app!', username: 'kapee', password: '4013', img_url: 'https://scontent.fewr1-5.fna.fbcdn.net/v/t1.0-9/50000851_1909623665827189_167567848405729280_o.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_ohc=DF-7z8pXIKkAX9okwEl&_nc_ht=scontent.fewr1-5.fna&oh=889c73f6c68db43d4ef4877eed9bf123&oe=5F551944', latitude: '73.7949', longitude: '40.7282', sex: 'female')
count=0
500.times do
    count +=1
User.create([{
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    dob: Faker::Date.between(from: '1989-09-23', to: '2014-09-25'),
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    pvt: Faker::Boolean.boolean(true_ratio: 0.3),
    country: Faker::Address.country_code,
    bio: Faker::Lorem.sentence,
    status: Faker::Lorem.paragraph,
    username: Faker::Name.last_name.downcase,
    password: '123',
    img_url: Faker::Avatar.image,
    longitude: Faker::Address.longitude,
    latitude: Faker::Address.latitude,
    sex: Faker::Gender.binary_type

}])
if(count%5==0) 
print ">"
end

end
 puts "\n #{(count.to_f/500)*100}% DONE"