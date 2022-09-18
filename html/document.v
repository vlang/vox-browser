module html

pub enum DocType {
	@none
	html
}

pub struct Document {
mut: 
	doctype DocType
	root Node
}