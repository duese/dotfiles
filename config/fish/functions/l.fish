# Defined in - @ line 1
function l --wraps='ls -lha' --description 'alias l ls -lha'
  ls -lha $argv;
end
