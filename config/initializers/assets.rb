
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( material-design-iconic-font/dist/css/material-design-iconic-font.min.css )
Rails.application.config.assets.precompile += %w( animate.css/animate.min.css )
Rails.application.config.assets.precompile += %w( jquery.scrollbar/jquery.scrollbar.css )
Rails.application.config.assets.precompile += %w( fullcalendar/dist/fullcalendar.min.css )
Rails.application.config.assets.precompile += %w( 1.jpg )
Rails.application.config.assets.precompile += %w( custom.css )
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")
Rails.application.config.assets.precompile += %w( css/app.min.css )
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')




