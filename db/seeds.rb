# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Community.destroy_all
Story.destroy_all
Storycomment.destroy_all
Membership.destroy_all
Feedback.destroy_all

users = User.create([
  {email: "info@maikelnabil.net", password: "mikemike", name: "Mike Nabil", age: 31, image: "https://i.ytimg.com/vi/XOIFlKsSors/maxresdefault_live.jpg"},
  {email: "George@usa.com", password: "12345678", name: "George Washington", age: 40, image: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg"},
  {email: "Abraham@usa.com", password: "12345678", name: "Abraham Lincoln", age: 50, image: "https://upload.wikimedia.org/wikipedia/commons/1/1b/Abraham_Lincoln_November_1863.jpg"},
  {email: "Kennedy@usa.com", password: "12345678", name: "John Kennedy", age: 60, image: "https://upload.wikimedia.org/wikipedia/commons/c/c3/John_F._Kennedy,_White_House_color_photo_portrait.jpg"},
  {email: "Barack@usa.com", password: "12345678", name: "Barack Obama", age: 70, image: "https://upload.wikimedia.org/wikipedia/commons/e/e9/Official_portrait_of_Barack_Obama.jpg"}
])

posts = Post.create([
  {title:"Story Of The Bird", user_id: 1, image: "https://static.pexels.com/photos/9291/nature-bird-flying-red.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {title:"Story Of The Dog", user_id: 2, image: "https://upload.wikimedia.org/wikipedia/commons/a/a8/Lava_the_sled_dog.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {title:"Story Of The Cat", user_id: 3, image: "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {title:"Story Of The Beaver", user_id: 4, image: "https://c1.staticflickr.com/8/7481/16273141142_a2e9abfe5c_b.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  {title:"Story Of The Horse", user_id: 5, image: "https://upload.wikimedia.org/wikipedia/commons/2/2b/Blue_Eyed_Icelandic_Horse.jpg", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}

])

comments = Comment.create([
  {content:"Great Story!", post_id: 1, user_id: 5},
  {content:"I love this!", post_id: 2, user_id: 1},
  {content:"Awesome", post_id: 3, user_id: 2},
  {content:"Wonderful", post_id: 4, user_id: 3},
  {content:"Amazing", post_id: 5, user_id: 4},
  {content:"Inspiring!", post_id: 1, user_id: 5},
  {content:"Tremendous", post_id: 2, user_id: 1},
  {content:"So cute!", post_id: 3, user_id: 2},
  {content:"I love thus story!", post_id: 4, user_id: 3},
  {content:"Nice story!", post_id: 5, user_id: 4}
])

communities = Community.create([
    {name: "Drama", header: "https://upload.wikimedia.org/wikipedia/commons/6/6e/The_Battle_of_Bosworth_Field_-_A_Scene_from_the_Great_Drama_of_History.jpg"},
    {name: "History", header: "https://upload.wikimedia.org/wikipedia/commons/a/a5/France_1803-04-A_20_Francs.jpg"},
    {name: "Romance", header: "http://www.publicdomainpictures.net/pictures/40000/velka/romance-novel.jpg"},
    {name: "Fiction", header: "http://www.thebluediamondgallery.com/wooden-tile/images/fiction.jpg"},
    {name: "Action", header: "https://c1.staticflickr.com/8/7270/6976087418_59719341f5_b.jpg"}
  ])

stories = Story.create([
  {title: "Story Of The Fool", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "https://static.pexels.com/photos/206559/pexels-photo-206559.jpeg", user_id: 1, community_id: 1},
  {title: "Story Of The Smart", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "https://upload.wikimedia.org/wikipedia/commons/d/d6/A_black_woman,_Chicago._-_NARA_-_556151.jpg", user_id: 2, community_id: 2},
  {title: "Story Of The Brave", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "https://static.pexels.com/photos/26775/pexels-photo-26775.jpg", user_id: 3, community_id: 3},
  {title: "Story Of The Young", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "https://static.pexels.com/photos/160423/woman-happy-beautiful-cute-160423.jpeg", user_id: 4, community_id: 4},
  {title: "Story Of The Old", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "https://upload.wikimedia.org/wikipedia/commons/9/99/KunaWomanSellingMolas.jpg", user_id: 5, community_id: 5}
  ])

storycomments = Storycomment.create([
  {content: "Great!", story_id: 1, user_id: 1},
  {content: "Amazing", story_id: 2, user_id: 2},
  {content: "Wonderful!", story_id: 3, user_id: 3},
  {content: "Inspiring!", story_id: 4, user_id: 4},
  {content: "I love this!", story_id: 5, user_id: 5}
  ])

memberships = Membership.create([
  {user_id: 1, community_id: 1},
  {user_id: 2, community_id: 1},
  {user_id: 3, community_id: 2},
  {user_id: 4, community_id: 2},
  {user_id: 5, community_id: 3},
  {user_id: 1, community_id: 3},
  {user_id: 2, community_id: 4},
  {user_id: 3, community_id: 4},
  {user_id: 4, community_id: 5},
  {user_id: 4, community_id: 5}
  ])

feedbacks = Feedback.create([
  {content: "Thanks", user_id: 2},
  {content: "Great", user_id: 3},
  {content: "Wow", user_id: 4},
  {content: "Wonderful Website!", user_id: 5}
  ])
