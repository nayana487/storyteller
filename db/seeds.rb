# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all
User.destroy_all

users = User.create([
  {email: "maikel_nabil@yahoo.com", password: "mikemike1", name: "Mike The First", age: 20, image: "http://www.ynetnews.com/PicServer3/2012/12/23/4352918/43529130100499408258no.jpg"},
  {email: "maikel.nabil@yahoo.com", password: "mikemike2", name: "Mike The Second", age: 30, image: "http://c8.alamy.com/comp/D1HJN7/maikel-nabil-sanad-explains-his-motives-for-visiting-israel-making-D1HJN7.jpg"},
  {email: "maikelnabil@gmail.com", password: "mikemike3", name: "Mike The Third", age: 40, image: "http://www.ned.org/wp-content/uploads/2015/09/Nabil-200x260.jpg"}
])

posts = Post.create([
  {title:"The Story Of The Bird", user_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/3/32/House_sparrow04.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {title:"The Story Of The Dog", user_id: 2, image: "http://r.ddmcdn.com/s_f/o_1/cx_633/cy_0/cw_1725/ch_1725/w_720/APL/uploads/2014/11/too-cute-doggone-it-video-playlist.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {title:"The Story Of The Cat", user_id: 3, image: "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}
])

comments = Comment.create([
  {content:"The first comment on the first post", post_id: 1, user_id: 3},
  {content:"The first comment on the second post", post_id: 2, user_id: 1},
  {content:"The first comment on the third post", post_id: 3, user_id: 2}
])
