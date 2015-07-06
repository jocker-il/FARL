function copyPrototype(type, name, newName)
  local p = table.deep_copy(data.raw[type][name])
  p.name = newName
  if p.minable and p.minable.result then
    p.minable.result = newName
  end
  return p
end