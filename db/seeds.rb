10.times do |i|
  User.create(name: "User #{i}", email: "email_#{i}@test.com")
end

Group.create(name: 'AppGroup My first group')

