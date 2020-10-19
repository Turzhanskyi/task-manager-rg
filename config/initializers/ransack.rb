# frozen_string_literal: true

Ransack.configure do |config|
  config.search_key = :search
  config.ignore_unknown_conditions = false
  config.hide_sort_order_indicators = false
end
