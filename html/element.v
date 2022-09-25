module html

pub struct Element {
	tag_name string
mut:
	children []Node
	parent Node
}

pub const void_tags = {
	"area": true,
	"base": true,
	"br": true,
	"col": true,
	"embed": true,
	"hr": true,
	"img": true,
	"input": true,
	"link": true,
	"meta": true,
	"source": true,
	"track": true,
	"wbr": true,
	"template": true,
	"script": true,
	"style": true,
	"textarea": true,
	"title": true,
}
pub fn (e Element) get_parent() ?Node {
	return e.parent
}

pub fn (e Element) get_children() []Node {
	return e.children
}

pub fn (mut e Element) add_child(n Node) {
	e.children << n
}

fn create_element(tag string, parent Node) ?Element {
	t := tag.split(" ")
	return Element {
		tag_name: t[0].to_upper()
		parent: parent
	}
}

fn is_void_tag(tag string) bool {
	return void_tags[tag.to_lower()]
} 