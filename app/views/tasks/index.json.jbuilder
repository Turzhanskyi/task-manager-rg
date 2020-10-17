# frozen_string_literal: true

json.array! @project_tasks, partial: 'project_tasks/project_task', as: :project_task
