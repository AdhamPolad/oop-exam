class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        closest_sum = float('inf')
        nums.sort()
        n = len(nums)

        for i in range(n-2):
            j = i+1
            k = n-1
            while j < k:
                current_sum = nums[i] + nums[j] + nums[k]
                if abs(current_sum - target) < abs(closest_sum - target):
                    closest_sum = current_sum
                elif current_sum < target:
                    j += 1
                elif current_sum > target:
                    k-=1
                else:
                    return current_sum
        return closest_sum

                

# recursive solution 

class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        nums.sort()

        def find_closest(i,j,k,closest_sum):

            if j>=k:
                return closest_sum
            
            s = nums[i] + nums[j] + nums[k]

            if abs(s - target)< abs(closest_sum - target):
                closest_sum = s
            
            if s< target:
                closest_sum = find_closest(i, j+1,k , closest_sum)
            elif s>target:
                closest_sum = find_closest(i, j, k-1, closest_sum)
            else:
                return s
            
            return closest_sum

        closest_sum = float('inf')
        for i in range(len(nums) - 2):
            closest_sum = find_closest(i, i+1, len(nums)-1, closest_sum)

        return closest_sum

#time complexity O(n**2)
