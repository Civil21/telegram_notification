module TelegramNotification
  class TelegramNotification
    attr_reader :client

    def initialize
      @client = Client.new
    end

    def send_message(text)
      client.post(text: text)
    end
  end
end
