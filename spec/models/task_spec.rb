# frozen_string_literal: true

# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
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
require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }

    it do
      should validate_inclusion_of(:status)
        .in_array(%w[not-started in-progress complete])
    end
  end

  context 'associations' do
    it { is_expected.to belong_to(:project) }
  end
end
