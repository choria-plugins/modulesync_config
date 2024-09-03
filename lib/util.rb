def choria_module_name
  case @metadata[:module_name]
  when "action-policy"
    "mcollective_util_actionpolicy"
  when "mcollective_choria"
    "mcollective_choria"
  when "tasks-agent"
    "mcollective_agent_bolt_tasks"
  when /-agent$/
    "mcollective_agent_#{@metadata[:module_name].sub(/-agent$/, '')}"
  else
    raise "Don't know how to construct module name"
  end
end
