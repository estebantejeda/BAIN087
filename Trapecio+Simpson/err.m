function x = err(m)
  x = abs((valR()-m)/valR())*100;
  return
endfunction

function x = valR()
  x = -(sin(1)+cos(1)-e)/(2*e);
  return;
endfunction