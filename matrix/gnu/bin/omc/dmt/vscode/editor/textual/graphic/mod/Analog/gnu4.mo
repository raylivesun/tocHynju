function gnu4

    Real C4 = 34;
    Real C1e = 31.5;
    parameter Boolean keyOff;
    parameter Boolean keyOn;
    parameter Boolean key;
    Real R3 = 14.3;
    Real R0 = 14.0001;

equation
   
   C4 = C1e + 1;
   C1e = C4 + 1;
   for i in 1:R3 loop
       i = C4 + C1e + 1;
   end for;
   for i in 1:R0 loop
       i = C4 + C1e + 1;
   end for;        

end gnu4;

model gnu4EletricalAnalog
    Real outTokenEvent = 1.4; // push out token
    Real incTokenEvent = 2.8; // push inc token
equation
   outTokenEvent = incTokenEvent + 2;    
end gnu4EletricalAnalog;


model gnu4EletricDigital
      // static relative match moved method linked  
    Real x(startTime = 0.0, stopTime = 20);
      // static relative match moved method linked hover 
    Real y(startTime = 0.0, stopTime = 20);
equation
   x = x + 1;
   y = y + 1;    
end gnu4EletricDigital;
     

model gnu4EletricMachines
   
   // Transformer model to choose secondary
   
   Real Yy = 25.4;
   Real Yd = 26.6;
   Real Yz = 27.6;
   Real Dy = 28.4;
   Real Dd = 29.4;
   Real Dz = 32.4;
   
   // Frequency parameter
   
   parameter String nominal = "frequency";
   parameter String prinary = "voltage";
   parameter String aparent = "powsend";
   parameter String voltage = "drop";
   parameter String coopers = "losses";

equation

   Yy = Yd + Yz;
   Dy = Dd + Dz;
   for i in 1:8512 loop
       if i >= 0 then
          i = i + 1;   
          der(i+i+sin(i));
       else
       sin(i);   
       end if;
   end for;
   
end gnu4EletricMachines;                 
       

model gnu4EletricBasicMachines
      
      Real DC_PermanentMagnet(startTime = 0.0, stopTime = 20);
      Real DC_EletricalExcits(startTime = 0.0, stopTime = 20);
      Real DC_SeriesExcited(startTime = 0.0, stopTime = 20);

equation
     
    DC1 = DC_PermanentMagnet;
    DC2 = DC_EletricalExcits;
    DC3 = DC_SeriesExcited; 

    for v1 in 1:8512 loop
        v1 = v1 + 1;
        der(v1+v1+sin(v1));
    end for;

    for v1 in 1:8512 loop
        if v1 < v1 + 1 then
           v1 = v1 + 1;
           der(v1+v1+sin(v1));
        end if;
    end for;

    for v1 in 1:8512 loop
       if v1 >= v1 + 1 then
          v1 = v1 + 1;
          der(v1+v1+sin(v1));
       end if;
   end for;              
    
end gnu4EletricBasicMachines;               

             