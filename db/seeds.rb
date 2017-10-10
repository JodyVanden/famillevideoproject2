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

marks_random = [ 0, 1, 2, 3, 4, 5 ].sample

comment_random = [ "super video", "j'aime bien, je trouve que ca va tres bien",
  "top top top, je surkiff", "ah oui ca vaut le coup!"]

video_attributes.each do |video_attributes|
  puts video_attributes[:attributes][:name]
  video = Video.new(video_attributes[:attributes])
  sleep 0.8
  video.save
end

users_attributes.each do |user_attributes|
  puts user_attributes[:attributes][:first_name]
  user = User.new(user_attributes[:attributes])
  user.profile_picture_url = user_attributes[:profile_picture_url]
  # comment = Comment.new(comment_random)
  # mark = Mark.new(marks_random)
  sleep 0.8
  # mark.save
  # comment.save
  user.save
end
