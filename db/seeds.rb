# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "deleted User"
Video.destroy_all
puts "deleted Video"
# Comment.destroy_all
Mark.destroy_all
puts "deleted Mark"

users_attributes = [
  {
    attributes: {
      first_name: "Jane",
      last_name: "Smith",
      email: "jane@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      allow_non_public: true
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
      allow_non_public: false
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
  },
  {
    attributes: {
      first_name: "Jody",
      last_name: "Vanden",
      email: "jody.vanden@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      allow_non_public: true
    },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
    }]

video_attributes = [
  {
    attributes: {
      name: "Ambleny Papy Michel et Mamie dans le jardin",
      url: "https://youtu.be/KgVbcQrGefE",
      description: "Travail dans le jardin d'Ambleny avec Michel, Jean Marie et Papy. Debroussaillage,
      feu pour bruler les branches mortes, fleurs de Mamie",
      is_public: true
    }
  },
  {
    attributes: {
      name: "video kitesurf",
      url: "https://youtu.be/Tvv0lT-qXIM",
      description: LoremIpsum.random(paragraphs: 2),
      is_public: true
    }
  },
  {
    attributes: {
      name: "video de model reduit",
      url: "https://youtu.be/ArTcZ15aVYs",
      description: LoremIpsum.random(paragraphs: 2),
      is_public: true
      }
    },
  {
    attributes: {
      name: "video de drone",
      url: "https://youtu.be/BnoUxPF3KuE",
      description: LoremIpsum.random(paragraphs: 2),
      is_public: true
      }
    },
    {
    attributes: {
      name: "Paramotor emergency landing",
      url: "https://youtu.be/-Vbwnt6_6mU",
      description: LoremIpsum.random(paragraphs: 2),
      is_public: false
      }
    },
    {
    attributes: {
      name: "Kiteboarding is Awesome 2017 #5",
      url: "https://youtu.be/MZcWd-9wx40",
      description: LoremIpsum.random(paragraphs: 2),
      is_public: true
      }
    },
    {
    attributes: {
      name: "video Crawl through a B-29 Superfortress IN FLIGHT! + Real-Time procedures / ATC - Oshkosh AirVenture!",
      url: "https://youtu.be/XakK81edKFA",
      description: LoremIpsum.random(paragraphs: 2),
      is_public: false
      }
    }
  ]

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
