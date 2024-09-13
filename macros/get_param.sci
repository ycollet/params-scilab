function [res,err] = get_param(list_name,param_name)
[nargout,nargin] = argn();
if typeof(list_name)=='plist' then
  if is_param(list_name,param_name) then
    res = list_name(param_name);
  else
    res = [];
  end
  if nargout==2 then err = %F; end
else
  if nargout==2 then err = %T; end
end
endfunction

