function threadData
  output ThreadData threadData;
protected
  record ThreadData
  end ThreadData;
external "builtin";
annotation(Documentation(info="<html>
<p>Used to access thread-specific data in external functions.</p>
</html>"));
end threadData;
