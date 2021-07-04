require "telegram_notification"

module TelegramNotification
  RSpec.describe ::TelegramNotification::Client do
    before :each do
      ::TelegramNotification.config
      @client = ::TelegramNotification.client
    end

    it "default api_url" do
      expect(@client.api_url).to eq URI.parse("https://api.telegram.org/")
    end

    it 'test send' do
      expect(@client.post(text: "test message")).to eq true
    end

  end
end
