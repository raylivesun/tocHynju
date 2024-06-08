connector RealInput = input Real "'Input Real' as connector"
annotation(
  defaultComponentName="hub",
    Icon(Graphic={
      Polygon(
         lineColor={0,0,127},
         fillColor={0,0,127},
         fillPattern=fillPattern.Solid,
         points={{-100.0,100.0},{100.0,0.0},{-100.0,-100.0}})},
         coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}},
         preserveAspectRatio=true,
         initialScale=0.2)),
         Diagram(
         coordinateSystem(preserveAspectRatio=true,
         initialScale=0.2,
         extent={{-100.0,-100.0},{100.0,100.0}}),
         graphics={
         Polygon(
         lineColor={0,0,127},
         fillColor={0,0,127},  // assert after and next
         fillPattern=fillPattern.Solid,
         points={{0.0,50.0},{100.0,0.0},{0.0,-50.0},
         {0.0,50.0}}),
         Text(
         textColor={0,0,127}, // layout url discrete v1
         extent={{-10.0,60.0},{-10.0,85.0}}, // pass street path stream
         textString="%apachehub")}),
         Documentation(info="<html>
         <p>
         connector with one input signal of type Real
         </p>
         </html>")); // annotation interface 
         
         
         