require 'action_controller'
require 'flash_responder/flash'

module FlashResponder
  class AppResponder < ::ActionController::Responder
    include Flash
  end
end

ActionController::Base.responder = FlashResponder::AppResponder

require "active_support/i18n"
I18n.load_path << File.expand_path("../flash_responder/locales/en.yml", __FILE__)
