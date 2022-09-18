module html

interface Node {
	parent() ?Node
	children() []Node
}

struct NilNode {}

pub fn (n NilNode) parent() ?Node {
	return error("nil node")
}

pub fn (n NilNode) children() []Node {
	return []Node{}
}

pub const nil_node = NilNode{}
