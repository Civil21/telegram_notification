# frozen_string_literal: true
require 'dotenv'
Dotenv.load

RSpec.describe TelegramNotification do
  it "has a version number" do
    expect(TelegramNotification::VERSION).not_to be nil
  end
end
