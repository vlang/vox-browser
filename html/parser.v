module html

import strings.textscanner

pub struct Parser {
	input string
}
 
fn parse(rawHTML string) ?Document {	
	mut doc := Document{
		doctype: DocType.@none
		root: nil_node
	}

	mut scanner := textscanner.new(rawHTML.trim_space())
	mut current_node := doc.root

	for scanner.remaining() > 0 {
		c := scanner.next()
		match rune(c) {
			`<` { 
				parse_tag(mut doc, mut current_node, mut scanner)
			}
			else {}
		}
	}

	println(doc)
	return doc
}

fn parse_tag(mut doc Document, mut current_node Node, mut scanner textscanner.TextScanner) {
	tag := seek_tag_end(mut scanner)
	match rune(tag[0]) {
		`!` {
			match true {
				tag.starts_with("!--") {
					// handle comment
				}
				tag.to_upper().starts_with("!DOCTYPE ") {
					// actually verify doctype
					doc.doctype = DocType.html
				}
				else {}
			}
		}
		`/` {
			current_node = current_node.parent() or {
				panic("no parent")
			}
		}
		else {
			mut node := create_element(tag, current_node) or {
				panic("\nerror: $err\ncreating node from tag: $tag")
			}

			current_node = node
		}
	}
}

fn seek_tag_end(mut scanner textscanner.TextScanner) string {
	mut tag_buffer := ""

	for scanner.remaining() > 0 {
		c := scanner.next()
		match rune(c) {
			`>` {
				cb := scanner.peek_back()
				if cb != `\\` {
					break
				}
			}
			else {
				tag_buffer += rune(c).str()
			}
 		}
	}

	return tag_buffer
}