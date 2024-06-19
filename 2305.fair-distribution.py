class Solution:
    def distributeCookies(self, cookies: List[int], k: int) -> int:
        def backtracking(index, distribution):
            nonlocal min_unfairness
            if index == len(cookies):
                min_unfairness = min(min_unfairness, max(distribution))
                return
            
            for i in range(k):
                distribution[i] += cookies[index]
                if distribution[i] < min_unfairness:
                    backtracking(index+1, distribution)
                distribution[i] -= cookies[index]
            
        min_unfairness = float('inf')
        distribution = [0] * k
        backtracking(0, distribution)
        return min_unfairness

# Time Complexity: O(n*k)
# Space Complexity: O(n+k)
