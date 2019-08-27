if Admin.count.zero?
  puts 'Seeding Admins'
  Admin.create!(email: 'john@dow.com', first_name: 'john', last_name: 'Dow',
                password: '123123', password_confirmation: '123123')
end
