Factory.define :user do |user|
  user.name                  "Test User"
  user.email                 "test.user@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "user#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Lorem ipsum dolor"
  micropost.association :user
end