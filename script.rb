require 'faker'

10.times do
    UserPost.create(
        title: Faker::Lorem.sentence,
        written_text: Faker::Lorem.paragraph,
        profile_id: rand(1..10)
    )
end