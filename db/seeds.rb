puts '=== Destroy User ==='
User.destroy_all

puts '=== Create Users ==='
wayne  = User.create(email: 'wayne@futureworkz.com', password: '123123123')
steven = User.create(email: 'steven@example.com', password: '123123123')

puts '=== Destroy Rooms ==='
Room.destroy_all

puts '=== Create Rooms ==='
Room.create(receivers: [wayne.id, steven.id])
