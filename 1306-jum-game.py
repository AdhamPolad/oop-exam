class Solution:
    def canReach(self, arr: List[int], start: int) -> bool:
        queue = deque([start])
        visited = set()
        n = len(arr)

        while queue:
            current = queue.popleft()

            if arr[current] == 0:
                return True
            
            visited.add(current)

            for i in (current - arr[current], current + arr[current]):
                if 0<=i<n and i not in visited :
                    queue.append(i)

        return False

# Time Complexity: O(n)
# Space Complexity: O(n)