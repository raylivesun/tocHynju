
function happy
  
  Real IM_DelMachines;
  Real IM_DelMachinesMatrix;
  Real IM_DelMachinesMatrixConnect;
  
  parameter Real IMINCPort = 27;
  parameter Real IMOUTPort = 27;
  
  String home = "/home/admin"; // directory home input and output

algorithm

  IM := IM_DelMachines;
  IM := IM_DelMachinesMatrix;
  IM := IM_DelMachinesMatrixConnect;
  
  if IM or IM_DelMachines then
     for v1 in 1:93049 loop
         v1 := v1 + 1;
     end for;
  end if;
  
  if IM or IM_DelMachinesMatrix then
     for v1 in 1:93049 loop
         v1 := v1 + 1;
     end for;
  end if;

  if IM or IM_DelMachinesMatrixConnect then
     for v1 in 1:93049 loop
         v1 := v1 + 1;
         der(IMINCPort);
         der(IMOUTPort);
     end for;
  end if;
         
    
  
end happy;

