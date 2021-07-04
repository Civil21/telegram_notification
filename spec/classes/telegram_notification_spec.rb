require "telegram_notification"

module TelegramNotification
  RSpec.describe ::TelegramNotification::TelegramNotification do
    before :each do
      @telegram_notification = ::TelegramNotification.new
      ::TelegramNotification.configure do |c|
        c.api_token = ENV["TELEGRAM_API_TOKEN"]
        c.chat_id = ENV["TELEGRAM_CHAT_ID"] 
      end
    end

    it "test send message" do
      expect(@telegram_notification.send_message("test send message")).to eq(true)
    end

  end
end
