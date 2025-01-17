class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        
        # brute force
        # ans=set()
        # nums.sort()
        # n=len(nums)
        # for i in range(n-2):
        #     for j in range(i+1,n-1):
        #         for k in range(j+1,n):
        #             temp=nums[i]+nums[j]+nums[k]
        #             if temp==0:
        #                 ans.add((nums[i],nums[j],nums[k]))
        # return ans


        # optimised approach
        ans = set()
        nums.sort()
        n = len(nums)

        for i in range(n-2):
            j = i+1
            k = n-1
            while j<k:
                temp = nums[i] + nums[j] + nums[k]

                if temp == 0:
                    ans.add((nums[i], nums[j], nums[k]))
                    j+=1
                elif temp >0:
                    k-=1
                else:
                    j+=1
        
        return ans

        # time complexity o(n**2)