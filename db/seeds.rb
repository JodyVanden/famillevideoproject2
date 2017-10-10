# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Video.destroy_all
# Comment.destroy_all
Mark.destroy_all

users_attributes = [
  {
    attributes: {
      first_name: "Jane",
      last_name: "Smith",
      address: "1 Square de Roc Épine 49100 Angers",
      uid: "",
      email: "jane@gmail.com",
      password: "123456",
      password_confirmation: "123456",
    },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "John",
      last_name: "Dubois",
      address: "4 Place du Dr Faust 85000 La Roche-sur-Yon",
      uid: "",
      email: "john@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "Lee",
      last_name: "Sue",
      address: "16 Rue de Kerozen 56000 Vannes",
      uid: "",
      email: "lee@gmail.com",
      password: "123456",
      password_confirmation: "123456",
     },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "Alexandre",
      last_name: "Legrand",
      address: "3 Rue Raymond Marcellin 56370 Sarzeau",
      uid: "",
      email: "chuck@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "Romain",
      last_name: "Perrin",
      address: "1 Rue du Colonel Lebel 49300 Cholet",
      uid: "",
      email: "larry@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  }]

video_attributes = [
  {
    attributes: {
      name: "video kitesurf",
      url: "https://youtu.be/Tvv0lT-qXIM"
    }
  },
  {
    attributes: {
      name: "video de model reduit",
      url: "https://youtu.be/ArTcZ15aVYs"
    }
    },
  {
    attributes: {
      name: "video de drone",
      url: "https://youtu.be/BnoUxPF3KuE"
    }
  }]


users_attributes.each do |user_attributes|
  puts user_attributes[:attributes][:first_name]
  user = User.new(user_attributes[:attributes])
    user.remote_profile_picture_url = user_attributes[:profile_picture_url]
  sleep 0.8
  user.save
end
