encapsulated operator function '^' "Complex power of complex number"
  import Complex;
  input Complex c1 "Complex number";
  input Complex c2 "Complex exponent";
  output Complex c3 "= c1^c2";
protected
  Real lnz=0.5*log(c1.re*c1.re + c1.im*c1.im);
  Real phi=atan2(c1.im, c1.re);
  Real re=lnz*c2.re - phi*c2.im;
  Real im=lnz*c2.im + phi*c2.re;
algorithm
  c3 := Complex(exp(re)*cos(im), exp(re)*sin(im));
  annotation(Inline=true, Documentation(info="<html>
<p>This function returns the given Complex numbers c1 to the power of the Complex number c2.</p>
</html>"));
end '^';
