
FactoryBot.create(:admin, email: 'admin@example.com', password: 'secret')

100.times do
  FactoryBot.create(:contact)
end
