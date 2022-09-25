module html

interface Node {
	get_parent() ?Node
	get_children() []Node

mut:
	add_child(Node)
}

struct NilNode {}

pub fn (n NilNode) add_child(Node)

pub fn (n NilNode) get_parent() ?Node {
	return error("nil node")
}

pub fn (n NilNode) get_children() []Node {
	return []Node{}
}

pub const nil_node = NilNode{}
