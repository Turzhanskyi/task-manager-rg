# frozen_string_literal: true

class ProjectOverviewComponent < ViewComponent::Base
  with_collection_parameter :project
  attr_reader :project

  def initialize(project:)
    @project = project
  end

  delegate :name, to: :project

  delegate :description, to: :project

  def completion_stats
    "#{display_percent_complete} #{display_breakdown}"
  end

  delegate :status, to: :project

  private

  def display_percent_complete
    "#{project.percent_complete}% complete"
  end

  def display_breakdown
    "(#{project.total_complete}/#{project.total_tasks} tasks)"
  end
end
