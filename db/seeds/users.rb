# frozen_string_literal: true

if User.count.zero?
  User.create!(
    email:                 'test_user@gmail.com',
    password:              '123456',
    password_confirmation: '123456'
  )
  User.create!(
    email:                 'test@gmail.com',
    password:              '123456',
    password_confirmation: '123456'
  )
end
