puts "Deleteing users"

User.destroy_all

puts "Creating users "

User.create!(fullname:"Alan", email:"alan@gmail.com", password: "123456")

puts "done"
