module TelegramNotification
  class Config
    attr_accessor :api_token, :chat_id
    def initialize
      @api_token = ENV["TELEGRAM_API_TOKEN"]
      @chat_id = ENV["TELEGRAM_CHAT_ID"] 
    end
  end
end
