function [ga_list,err] = set_param(list_name,param_name,param_value)
[nargout,nargin] = argn();
if typeof(list_name)=='plist' then
  if nargout==2 then err = %F; end
  if is_param(list_name,param_name) then
    list_name(param_name) = param_value;
    ga_list = list_name;
  else
    err = %T;
  end
else
  if nargout==2 then err = %T; end
end
endfunction

