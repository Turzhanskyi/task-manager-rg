# frozen_string_literal: true

# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_projects_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Project < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :tasks, dependent: :destroy

  def status
    return 'not-started' if tasks.none?

    if tasks.all?(&:complete?)
      'complete'
    elsif tasks.any? { |task| task.in_progress? || task.complete? }
      'in-progress'
    else
      'not-started'
    end
  end

  def percent_complete
    return 0 if tasks.none?

    ((total_complete.to_f / total_tasks) * 100).round
  end

  def total_complete
    tasks.count(&:complete?)
  end

  def total_tasks
    tasks.count
  end
end
