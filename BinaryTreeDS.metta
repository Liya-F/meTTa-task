;custom datatypes
(: BinaryTree Type)
(: NodeType Type)
(: NodeValue Type)

;possible NodeTypes
(: AND NodeType)
(: OR NodeType)
(: NOT NodeType)
(: LITERAL NodeType)

;an empty binarytree
(: NilNode BinaryTree)

;a node has a value, a leftChild, and a rightChild
(: Node (-> NodeValue BinaryTree BinaryTree BinaryTree))

;Binary Tree
!(Node (AND Nil) (Node (LITERAL A) NilNode NilNode) (Node (LITERAL A) NilNode NilNode))

;a function to get the left child of a Binary Tree
(=(getLeftChild $binaryTree)
(case $binaryTree
 (
    ((Node $val $leftChild $rightChild) $leftChild)
    (() ())
 )
)
)

;testcase
!(getLeftChild (Node (AND nil) (Node (LITERAL A) NilNode NilNode) (Node (LITERAL A) NilNode NilNode)))

;a function to get the right child of a Binary Tree
(=(getRightChild $binaryTree)
(case $binaryTree
 (
    ((Node $val $leftChild $rightChild) $rightChild)
    (() ())
 )
)
)

;testcase
!(getRightChild (Node (AND nil) (Node (LITERAL A) NilNode NilNode) (Node (LITERAL A) NilNode NilNode)))

;a function to get the value of a node
(=(getNodeVal $binaryTree)
(case $binaryTree
 (
    ((Node $nodeValue $leftChild $rightChild) $nodeValue)
    (() ())
 )
)
)

;testcase
!(getNodeVal (Node (AND nil) (Node (LITERAL A) NilNode NilNode) (Node (LITERAL A) NilNode NilNode)))
