require "telegram_notification"

module TelegramNotification
  RSpec.describe ::TelegramNotification::Config do
    before :each do
      ::TelegramNotification.configure do |c|
        c.api_token = 'api_token'
        c.chat_id = 'chat_id'
      end
    end

    it 'should have api_token' do
      expect(::TelegramNotification.config.api_token).to eq 'api_token'
    end

    it 'should have chat_id' do
      expect(::TelegramNotification.config.chat_id).to eq 'chat_id'
    end

    it 'should reflect changes through block' do
      ::TelegramNotification.configure do |c|
        c.api_token = 'api_token2'
        c.chat_id = 'chat_id2'
      end
      expect(::TelegramNotification.config.api_token).to eq 'api_token2'
      expect(::TelegramNotification.config.chat_id).to eq 'chat_id2'
    end
  end
end
