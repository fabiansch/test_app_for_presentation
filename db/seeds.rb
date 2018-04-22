
FactoryBot.create(:admin, email: 'admin@example.com', password: 'secret')

15.times do
  FactoryBot.create(:contact)
end
