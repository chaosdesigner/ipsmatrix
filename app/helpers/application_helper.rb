# frozen_string_literal: true

module ApplicationHelper
  def getSliderValues(states)
    [getSliderMinValue(states), getSliderMaxValue(states), (getSliderMinValue(states) + getSliderMaxValue(states)) / 2]
  end

  def getSliderMinValue(states)
    min = 100
    states.each do |state|
      min = (min < state.value_min) ? min : state.value_min
    end
    min
  end

  def getSliderMaxValue(states)
    max = 0
    states.each do |state|
      max = (max > state.value_max) ? max : state.value_max
    end
    max
  end
end
