user = User.create!(
  email: 'admin@cloudline.hu',
  password: 'archimedes123',
  password_confirmation: 'archimedes123',
  role: :admin
)

site1 = Site.create!(
  name: 'Syrakuza',
  url: 'syrakuza.hu',
  user: user
)

Condition.create!(
  ctype: 'with_response_code',
  value: 200,
  site: site1
)

site2 = Site.create!(
  name: 'Teletype.hu',
  url: 'teletype.hu',
  user: user
)

Condition.create!(
  ctype: 'with_response_code',
  value: 200,
  site: site2
)
