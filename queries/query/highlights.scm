(string) @string
(escape_sequence) @string.escape
(capture) @type
(anonymous_node) @string
(predicate name: (identifier) @function)
(named_node
  name: (identifier) @variable
  (field_definition
    name: (identifier) @property))
(comment) @comment

(quantifier) @operator
(predicate_type) @punctuation.special

"." @operator

[
  "["
  "]"
  "("
  ")"
] @punctuation.bracket

":" @punctuation.delimiter

((program . (comment) @include)
 (#match? @include "^;\ +inherits\ *:"))
