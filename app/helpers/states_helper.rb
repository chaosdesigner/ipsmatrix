# frozen_string_literal: true

module StatesHelper
  def format_checkbox(entity_id, character_id, sex_id)
    state = State.where(entity_id: entity_id, character_id: character_id, sex_id: sex_id)
    td_class = ''
    if (state.empty?)
      checked = ' '
      form_url = "/states/new?character=#{character_id}&entity=#{entity_id}&sex=#{sex_id}"
      numeric_values = ''
    else
      checked = ' checked '
      form_url = "/states/#{state.first.id}/edit"
      if (state.first.character.feature_type_id === 1)
        numeric_values = "[#{state.first.value_min}, #{state.first.value_max}]"
      else
        if (state.first.image.attached?)
          td_class = (state.first.show_in_key) ? 'main_image' : 'has_image'
        else
          td_class = 'image_missing'
        end
        td_class = " class=\"#{td_class}\""
      end
    end
    "<td#{td_class}><input#{checked}type=\"checkbox\" class=\"key-checkbox\" onClick=\"window.location.assign('#{form_url}');\"></td>".html_safe
  end
end
