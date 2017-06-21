package main

import (
	"C"

	"bytes"
	"html/template"
)

//export processHTML
func processHTML(cfile *C.char) *C.char {
	file := C.GoString(cfile)

	tmpl, err := template.ParseFiles(file)
	if err != nil {
		return C.CString(err.Error())
	}

	var output bytes.Buffer

	err = tmpl.Execute(&output, []string{"Hello", "World!"})
	return C.CString(output.String())
}

func main() {}
