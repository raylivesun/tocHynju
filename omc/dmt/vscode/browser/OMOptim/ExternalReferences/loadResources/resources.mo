function loadResource
  "Return the absolute path name of a URI or local file name (in this default implementation URIs are not supported, but only local file names)"
  extends
    Modelica.Utilities.Internal.PartialModelicaServices.ExternalReferences.PartialLoadResource;
  algorithm
  fileReference:=OpenModelica.Scripting.uriToFilename(uri);

  annotation (Documentation(info = "<html>
<p>
The interface of this model is documented at
<a href=\"modelica://Modelica.Utilities.Files.loadResource\">Modelica.Utilities.Files.loadResource</a>.
</p>
</html>"),
    __OpenModelica_EarlyInline = true);
end loadResource;
