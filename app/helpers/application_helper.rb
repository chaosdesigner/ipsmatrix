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

  def getStateWithImage(character_id)
    with_image = false
    without_image = false
    State.where(character_id: character_id).each do |state|
      if state.image.attached?
        with_image = state
      else
        without_image = state
      end
    end
    if with_image
      with_image
    else
      false
    end
  end

  def colateImgDescription(state)
    character = Character.find(state.character_id)
    feature = Feature.find(character.feature_id)
    entity = Entity.find(state.entity_id)
    img_description = feature.send(@name_attribute) + ': '
    img_description += character.send(@desc_attribute)
    img_description += ' (' + entity.name + ')' unless feature.id === 10
    img_description
  end
end
