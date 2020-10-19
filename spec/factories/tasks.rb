# frozen_string_literal: true

# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  deadline    :date
#  description :text
#  name        :string
#  position    :integer
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :bigint           not null
#
# Indexes
#
#  index_tasks_on_project_id  (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#
FactoryBot.define do
  factory :task do
    name { FFaker::Name.unique.name }
    description { FFaker::Name.unique.name }
    status { FFaker::Name.unique.name }
    deadline { FFaker::Date.today }
    project
  end
end
