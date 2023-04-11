# Protocol Documentation
<a name="top"></a>
{{range .Files}}
{{$file_name := .Name}}
<a name="{{.Name | anchor}}"></a>
<p align="right"><a href="#top">Top</a></p>

## {{.Name}}
{{.Description}}
{{if .Messages}}

{{range .Messages}}
<a name="{{.FullName | anchor}}"></a>

### {{.LongName}}
{{.Description}}

{{if .HasFields}}
| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
{{range .Fields -}}
  | {{.Name}} | [{{.LongType}}](#{{.FullType | anchor}}) | {{.Label}} | {{if (index .Options "deprecated"|default false)}}**Deprecated.** {{end}}NOBREAK##{{nobr .Description}}##NOBREAK{{if .DefaultValue}} Default: {{.DefaultValue}}{{end}} |
{{end}}
{{end}}

{{if .HasExtensions}}
| Extension | Type | Base | Number | Description |
| --------- | ---- | ---- | ------ | ----------- |
{{range .Extensions -}}
  | {{.Name}} | {{.LongType}} | {{.ContainingLongType}} | {{.Number}} | NOBREAK##{{nobr .Description}}##NOBREAK{{if .DefaultValue}} Default: {{.DefaultValue}}{{end}} |
{{end}}
{{end}}

{{end}} <!-- end messages -->
{{end}}
{{if .Enums}}

{{range .Enums}}
<a name="{{.FullName | anchor}}"></a>

### {{.LongName}}
{{.Description}}

| Name | Number | Description |
| ---- | ------ | ----------- |
{{range .Values -}}
  | {{.Name}} | {{.Number}} | NOBREAK##{{nobr .Description}}##NOBREAK |
{{end}}

{{end}} <!-- end enums -->
{{end}}
{{if .HasExtensions}}

<a name="{{$file_name | anchor}}-extensions"></a>

### File-level Extensions
| Extension | Type | Base | Number | Description |
| --------- | ---- | ---- | ------ | ----------- |
{{range .Extensions -}}
  | {{.Name}} | {{.LongType}} | {{.ContainingLongType}} | {{.Number}} | NOBREAK##{{nobr .Description}}##NOBREAK{{if .DefaultValue}} Default: `{{.DefaultValue}}`{{end}} |
{{end}}
{{end}} <!-- end HasExtensions -->
{{if .Services}}

{{range .Services}}
<a name="{{.FullName | anchor}}"></a>

### {{.Name}}
{{.Description}}

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
{{range .Methods -}}
  | {{.Name}} | [{{.RequestLongType}}](#{{.RequestFullType | anchor}}){{if .RequestStreaming}} stream{{end}} | [{{.ResponseLongType}}](#{{.ResponseFullType | anchor}}){{if .ResponseStreaming}} stream{{end}} | NOBREAK##{{nobr .Description}}##NOBREAK |
{{end}}
{{end}} <!-- end services -->
{{end}}

{{end}}

## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
{{range .Scalars -}}
  | <a name="{{.ProtoType | anchor}}" /> {{.ProtoType}} | {{.Notes}} | {{.CppType}} | {{.JavaType}} | {{.PythonType}} | {{.GoType}} | {{.CSharp}} | {{.PhpType}} | {{.RubyType}} |
{{end}}

