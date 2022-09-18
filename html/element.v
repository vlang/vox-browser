module html

pub struct Element {
	tag_name string
	children []Node
	parent Node
}

pub fn (e Element) parent() ?Node {
	return e.parent
}

pub fn (e Element) children() []Node {
	return e.children
}

fn create_element(tag string, parent Node) ?Element {
	t := tag.split(" ")
	return Element {
		tag_name: t[0].to_upper()
		parent: parent
	}
}