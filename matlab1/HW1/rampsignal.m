function res = rampSignal(n0 , n)
  unitStep = n>= n0;
  res = n.*unitStep;
  endfunction