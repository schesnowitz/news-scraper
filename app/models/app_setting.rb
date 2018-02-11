class AppSetting < ApplicationRecord
  # validates_inclusion_of :theme_color, in: 1..10, message: "Value must a number > 0 and < 10"
  COLOR = %w(
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
  )


end