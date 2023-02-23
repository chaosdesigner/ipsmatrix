# frozen_string_literal: true

module StatesHelper
  def format_checkbox(entity_id, character_id, sex_id)
    state = State.where(entity_id: entity_id, character_id: character_id, sex_id: sex_id)
    if (state.empty?)
      checked = ' '
      form_url = "/states/new?character=#{character_id}&entity=#{entity_id}&sex=#{sex_id}"
    else
      checked = ' checked '
      form_url = "/states/#{state.first.id}/edit"
    end
    "<input#{checked}type=\"checkbox\" class=\"key_checkbox\" onClick=\"window.location.assign('#{form_url}');\">".html_safe
  end
end
