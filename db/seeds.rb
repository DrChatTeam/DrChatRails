# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# test by zhangfei and peng

(1..100).each do |index|
  User.create(
      name: "user#{index}",
      email: "user#{index}@test.com",
      password: 'password',
      role: Faker::Number.between(1, 4),
      sex: ['male', 'female'].sample,
      phonenumber: Faker::PhoneNumber.phone_number,
      status: Faker::Company.profession
  )
end
User.create(
  name: "Dr.Chat",
  email: "Dr.Chat@robot.com",
  password: 'password',
  role: 100,
  sex: 'Robot',
  phonenumber: Faker::PhoneNumber.phone_number,
  status: 'Robot'
)
Admin.create(
  email: "admin@test.com",
  password: 'password',
)
Robot.create(
  response_times: 0,
  total_time: 0.0,
  solve_times: 0
)

  