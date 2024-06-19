# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def rightSideView(self, root: Optional[TreeNode]) -> List[int]:
        if not root:
            return
        
        a = deque([root])
        right = []

        while a:
            
            length = len(a)
            for i in range(length):
                node = a.popleft()

                if node.left :
                    a.append(node.left)
                if node.right:
                    a.append(node.right)
                
                if i == length -1:
                    right.append(node.val)

        return right

# Time Complexity: O(n)

# Space Complexity: O(n)