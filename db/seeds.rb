#Load sample topic data
3.times do |topic|
  Topic.create!(title: "Topic: #{topic}")
end

puts "Sample Topics created"

#Load sample blog data
10.times do |blog|
  Blog.create!(
          title:  "My sample blog #{blog}",
          body:   "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here,
                  content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their
                  default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over
                  the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
          topic_id: Topic.first.id
          )
end

puts "Sample Blogs loaded"

#Load sample skills
5.times do |skill|
  Skill.create!(
           title: "Ruby on Rails #{skill}",
           percent_utilized: 75
  )
end

puts "Sample Skills loaded"

8.times do |portfolio_skills|
  Portvolio.create!(
               title:       "My Portfolio #{portfolio_skills}",
               subtitle:    "Ruby on Rails",
               body:        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,
                            making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more
                            obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in
                            classical literature, discovered the undoubtable source.",
               main_image:  "https://via.placeholder.com/400X400",
               thumb_image: "https://via.placeholder.com/200x200"
  )
  end

  puts "Portfolio samples created"

  1.times do |portfolio_skills|
    Portvolio.create!(
        title:       "My Portfolio #{portfolio_skills}",
        subtitle:    "Angular",
        body:        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,
                            making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more
                            obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in
                            classical literature, discovered the undoubtable source.",
        main_image:  "https://via.placeholder.com/400X400",
        thumb_image: "https://via.placeholder.com/200x200"
    )

    puts "Portfolio samples created"
  end

#Load sample technologies with portfolio object
# Technology.new(portvolio_id) OR find a portfolio and dont pass foreign_id
 3.times do |technology|
   p = Portvolio.last
   p.technologies.create!(name: "Technology #{technology}")
  end

puts "Sample technologies created with portfolio object"