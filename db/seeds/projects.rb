# frozen_string_literal: true

if Project.count.zero?
  Project.create!(name: 'Проєкт №3', user_id: 1)
  Project.create!(name: 'Проєкт №2', user_id: 1)
  Project.create!(name: 'Проєкт №1', user_id: 1)
  Project.create!(name: 'Complete the test task', user_id: 1)
  Project.create!(name: 'For Home', user_id: 1)

  Project.create!(name: 'Проєкт №1', user_id: 2)
end
