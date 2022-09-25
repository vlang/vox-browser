module html

pub struct Text {
mut:
	parent Node 
	content string
}

pub fn (t Text) get_parent() ?Node {
	return t.parent
}

pub fn (t Text) get_children() []Node {
	return []Node{}
}

pub fn (mut t Text) add_child(Node) 