module TelegramNotification
  class TelegramNotification
    attr_reader :client

    def initialize(options = {})
      @client = ::TelegramNotification.client
    end

    def send_message(text)
      client.post(text: text)
    end

    def config
      @config ||= ::TelegramNotification.config
    end
  end
end
