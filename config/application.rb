
module takagotch
  class Application < Rails::Application

  config.time_zone = 'Osaka'

  config.i18n.default_locale = :ja

  config.active_record.raise_in_transactional_callbacks = true
  
  #dev
  #config.action_controller.permit_all_parameters = true
  end
end
