# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
start_times = ['19:30', '20:00', '20:30', '21:00']
end_times = ['23:30', '24:00']

start_times.length.times do |n|
  end_times.length.times do |m|
    ShiftTime.create!(
      start_time: start_times[n],
      end_time: end_times[m]
    )
  end
end

User.create!(
  name: "みく",
  email: "aaa@aaa.jp",
  password: "aaaaaaaa"
  )

Shift.create!(
  name: "みく",
  start_time: Date.new(2017, 11, 21),
  user_id: 1,
  shift_time_id: 1
)




