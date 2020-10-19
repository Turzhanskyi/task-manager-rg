# frozen_string_literal: true

if User.count.zero?
  User.create!(
    email:                 'test_user@gmail.com',
    login:                 'TestUser',
    password:              '123456',
    password_confirmation: '123456',
    confirmed_at:          '2020-10-19 14:11:15.520128'
  )
  User.create!(
    email:                 'test@gmail.com',
    login:                 'Test',
    password:              '123456',
    password_confirmation: '123456',
    confirmed_at:          '2020-10-19 14:11:16.520130'
  )
end
