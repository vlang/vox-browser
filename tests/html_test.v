import os
import html

fn test_html() {
	index := os.read_file("tests/assets/html/index.html") or {
		panic("error loading test")
	}

	parsed_html := html.parse(index) or {
		panic("error parsing html")
	}

	assert parsed_html == html.Document{
		doctype: html.DocType.html
		root: html.nil_node
	}
}