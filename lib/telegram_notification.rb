# frozen_string_literal: true

require_relative "telegram_notification/version"
require "telegram_notification/config"
require "telegram_notification/client"
require "telegram_notification/telegram_notification"

module TelegramNotification
  class Error < StandardError; end

  def self.config
    @config ||= ::TelegramNotification::Config.new
  end

  def self.configure
    yield config
    @config
  end

  def self.client
    @client ||= ::TelegramNotification::Client.new
  end

  def self.new(*options)
    ::TelegramNotification::TelegramNotification.new(*options)
  end
end
