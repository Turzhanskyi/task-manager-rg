# frozen_string_literal: true

class TaskComponent < ViewComponent::Base
  attr_reader :task

  def initialize(task:)
    @task = task
  end

  def render?
    task.persisted?
  end

  def color_class
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end

  delegate :status, to: :task

  delegate :id, to: :task, prefix: true

  delegate :project, to: :task

  delegate :name, to: :task

  delegate :description, to: :task

  delegate :deadline, to: :task
end
