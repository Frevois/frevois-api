# frozen_string_literal: true

FactoryBot.define do
  factory :payment_request do
    customer
    payment_requestable { create(:payable_group) }

    amount_cents { 200 }
    amount_currency { "EUR" }
    email { Faker::Internet.email }
    invoice_numbers { [Faker::Number.number(digits: 5)] }
  end
end
