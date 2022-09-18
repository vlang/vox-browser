module html

pub struct Text {
	parent Node 
	content string
}

pub fn (t Text) parent() ?Node {
	return t.parent
}

pub fn (t Text) children() []Node {
	return []Node{}
}