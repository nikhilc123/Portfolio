# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Load sample blog data
10.times do |blog|
  Blog.create!(
          title:  "My sample blog #{blog}",
          body:   "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here,
                  content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                  default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over
                  the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
          )
end

puts "Sample Blogs loaded"

#Load sample skills
5.times do |skill|
  Skill.create!(
           title:           "My awesome #{skill}",
           percent_utilized: 75
  )
end

puts "Sample Skills loaded"

9.times do |portfolio_skills|
  Portvolio.create!(
               title:       "My Portfolio #{portfolio_skills}",
               subtitle:    "My great service",
               body:        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,
                            making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more
                            obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in
                            classical literature, discovered the undoubtable source.",
               main_image:  "https://via.placeholder.com/400X400",
               thumb_image: "https://via.placeholder.com/200x200"
  )

  puts "Portfolio samples created"
end