require 'faker'


10.times do Category.create(
    :title => Faker::Name.name
    )
end

5.times do Post.create(
    :description => Faker::Lorem.sentence,
  )
end
