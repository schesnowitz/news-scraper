


# driver_2 = User.create!( 
#   email: 'lofortetrucking@gmail.com',
#   password: 'password',
#   password_confirmation: 'password'
# )
# puts driver_2.inspect

# driver_profile_1 = DriverProfile.find_or_initialize_by(id: 1)
#   driver_profile_1.email = 'email1@email.com'
#   driver_profile_1.first_name = 'Antonio'
#   driver_profile_1.last_name = 'Rodriguez'
#   driver_profile_1.driver_string_id = '40268793320186691c34cdb5bb1d1234'
#   driver_profile_1.save
# puts driver_profile_1.inspect



app_setting = AppSetting.create!(
  hidden_sidebar: false,
  theme_color: '2',
  name: "some name",
  email: 'some email',
  tab_text: 'text for tab'
)

# setting = AppSetting.find_or_initialize_by(id: 1)
# setting.hidden_sidebar = false
# setting.theme_color = '8'
# setting.name = "News Scraper"
# setting.email = 'steve@chesnowitz.com'
# setting.tab_text 'News Scraper'
# setting.save 
# puts setting.inspect


user = User.create!(
  email: 'steve@chesnowitz.com',
  password: 'Blackn0t',
  password_confirmation: 'Blackn0t',
  admin: true

)
# puts user.inspect