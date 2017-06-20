10.times do  |blog|
   Blog.create!(
      title: "My Blog Post #{blog}",  
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque consectetur varius justo at suscipit. Aenean gravida sollicitudin lorem, eget sagittis tellus imperdiet non. Aenean arcu orci, rutrum eget elit ut, convallis cursus elit. Aliquam a scelerisque diam, sed aliquet neque. Sed rutrum quam ante, et varius tellus sodales at. Ut aliquet nibh quis varius tincidunt. Nam nec augue gravida lorem cursus consequat vitae id nisi. Suspendisse et suscipit nulla. Phasellus semper nulla ac massa porta vestibulum. Vivamus hendrerit auctor dolor, ac facilisis sem laoreet sed. Mauris efficitur mollis odio, sed tincidunt sem rhoncus id. Maecenas ultricies dictum hendrerit."
    ) 
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
        )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "My great service",
        body: "Morbi quis sodales mi. Morbi sit amet tortor molestie, aliquam ipsum sit amet, volutpat neque. Donec vel congue dui. Integer dapibus non felis ut tristique. Proin dignissim placerat tempus. Integer diam metus, efficitur non arcu sed, mollis blandit ex. Ut sodales tellus a ligula pulvinar, a gravida dolor tincidunt. Nam viverra egestas libero quis lacinia.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200",
)
end