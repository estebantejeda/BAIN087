function x = err(m)
  x = abs((valR()-m)/valR())*100;
  return
endfunction

function a = valR()
  a = e^(-0.5)+0.5;
  return;
endfunction