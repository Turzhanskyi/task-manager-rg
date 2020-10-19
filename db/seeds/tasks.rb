# frozen_string_literal: true

if Task.count.zero?
  Task.create!(
    name:        'Завдання №1',
    description: 'Детальний опис завдання',
    deadline:    Time.zone.today,
    project_id:  1,
    status:      'complete'
  )
  Task.create!(
    name:       'Завдання №2',
    deadline:   Time.zone.today,
    project_id: 1,
    status:     'complete'
  )
  Task.create!(
    name:       'Завдання №3',
    deadline:   Time.zone.today,
    project_id: 2,
    status:     'not-started'
  )
  Task.create!(
    name:        'Завдання №4',
    description: 'Детальний опис завдання',
    deadline:    Time.zone.today,
    project_id:  2,
    status:      'not-started'
  )

  Task.create!(
    name:        'Завдання №1',
    description: 'Детальний опис завдання',
    deadline:    Time.zone.today,
    project_id:  3,
    status:      'not-started'
  )
  Task.create!(
    name:       'Завдання №1.1',
    deadline:   Time.zone.today,
    project_id: 3,
    status:     'not-started'
  )
  Task.create!(
    name:       'Завдання №1.2',
    deadline:   Time.zone.today,
    project_id: 3,
    status:     'not-started'
  )
  Task.create!(
    name:       'Завдання №1.3',
    deadline:   Time.zone.today,
    project_id: 3,
    status:     'not-started'
  )
  Task.create!(
    name:       'Завдання №2',
    deadline:   Time.zone.today,
    project_id: 3,
    status:     'not-started'
  )

  Task.create!(
    name:        'Завдання №1',
    description: 'Детальний опис завдання',
    deadline:    Time.zone.today,
    project_id:  4,
    status:      'complete'
  )
  Task.create!(
    name:       'Завдання №2',
    deadline:   Time.zone.today,
    project_id: 4,
    status:     'complete'
  )

  Task.create!(
    name:        'Завдання №1',
    description: 'Детальний опис завдання',
    deadline:    Time.zone.today,
    project_id:  5,
    status:      'in-progress'
  )
  Task.create!(
    name:       'Завдання №1.1',
    deadline:   Time.zone.today,
    project_id: 5,
    status:     'complete'
  )
  Task.create!(
    name:       'Завдання №1.2',
    deadline:   Time.zone.today,
    project_id: 5,
    status:     'not-started'
  )
  Task.create!(
    name:       'Завдання №1.3',
    deadline:   Time.zone.today,
    project_id: 5,
    status:     'complete'
  )
  Task.create!(
    name:       'Завдання №2',
    deadline:   Time.zone.today,
    project_id: 5,
    status:     'complete'
  )

  Task.create!(
    name:        'Завдання №1',
    description: 'Детальний опис завдання',
    deadline:    Time.zone.today,
    project_id:  6,
    status:      'complete'
  )
  Task.create!(
    name:       'Завдання №2',
    deadline:   Time.zone.today,
    project_id: 6,
    status:     'complete'
  )
end
