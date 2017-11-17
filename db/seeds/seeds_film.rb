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
      first_name: "Francoise",
      last_name: "Vandenschrick",
      email: "francoise.vanden@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      allow_non_public: true
    },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "Hermann",
      last_name: "Vandenschrick",
      email: "hermann.vanden@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      allow_non_public: false
      },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "Kinnie",
      last_name: "Vandenschrick",
      email: "kinnie.vandens@gmail.com",
      password: "123456",
      password_confirmation: "123456",
     },
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/"
  },

  {
    attributes: {
      first_name: "Wendy",
      last_name: "Vandenschrick",
      email: "wendy.vanden@gmail.com",
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
      url: "https://youtu.be/sOxnpU6frZg",
      is_public: true
    }
  },
  {
    attributes: {
      url: "https://youtu.be/ijGdAuzkktY",
      is_public: true
    }
  },
  {
    attributes: {
      url: "https://youtu.be/KgVbcQrGefE",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/LvGj5mKa92c",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/My3ASMnnnzI",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/zxxpM2TMoek",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/7q4Y39CYEnw",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/IYtYb47IT_U",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/bBI6fXq5SO4",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/hUlvKCTYXK8",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/uci4NJhPRks",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/hUfAHNJuRhg",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/5mHG35DG5zI",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/9IxrE6zXzHo",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/0QiyFc5Q3yI",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/DbHdLzjGI5I",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/mIVqnm0YKsE",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/SjwPgg4hG7s",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/8a6_n2Oh7jg",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/Jfw35YXmCmE",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/2TtBOzbl4h0",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/3YCvblgQ02M",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/c2oACo8JVhw",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/ubttUmyjC5Y",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/z4PyplA8408",
      is_public: true
      }
  },
    {
    attributes: {
      url: "https://youtu.be/t2CJkVddyf4",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/pRkDuGQLUBs",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/f19mBo4ERkI",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/BozQPxdCAZ4",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/CwakBJ_mwHQ",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/lo9OdXf9h_4",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/eFB72V2tVqs",
      is_public: true
      }
  },
  {
    attributes: {
      url: "https://youtu.be/0Y7HfwYLi1c",
      is_public: true
      }
  }
  ]

# marks_random = [ 0, 1, 2, 3, 4, 5 ].sample

# comment_random = [ "super video", "j'aime bien, je trouve que ca va tres bien",
#   "top top top, je surkiff", "ah oui ca vaut le coup!"]
random_sleep = [0.8,0.9,1,1.2]

video_attributes.each do |video_attributes|
  puts video_attributes[:attributes][:url]
  video = Video.new(video_attributes[:attributes])
  video_youtube_info = VideoInfo.new(video_attributes[:attributes][:url])
  sleep random_sleep.sample
  video_youtube_info = VideoInfo.new(video_attributes[:attributes][:url]) if video_youtube_info.nil?
  video.youtube_id = video_youtube_info.video_id
  video.image_url = video_youtube_info.thumbnail_large
  video.name = video_youtube_info.title
  video.description = video_youtube_info.description
  sleep 0.8
  video.save
  puts "#{video.name} created"
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
