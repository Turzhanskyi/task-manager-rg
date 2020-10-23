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
class Task < ApplicationRecord
  validates :name, presence: true

  belongs_to :project

  has_rich_text :description
  has_one_attached :task_image
  validate :acceptable_image

  validates :status, inclusion: { in: %w[not-started in-progress complete] }

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    %w[Complete complete]
  ].freeze

  def complete?
    status == 'complete'
  end

  def in_progress?
    status == 'in-progress'
  end

  def not_started?
    status == 'not-started'
  end

  def acceptable_image
    return unless task_image.attached?

    errors.add(:task_image, 'is too big') unless task_image.byte_size <= 1.megabyte

    acceptable_types = %w[image/jpeg image/png]
    errors.add(:task_image, 'must be a JPEG or PNG') unless acceptable_types.include?(task_image.content_type)
  end
end
