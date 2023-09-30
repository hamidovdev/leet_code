    def singleNumber(self, nums: List[int]) -> int:
        nums.sort()
        if len(nums)==1:
            return nums[0]
        for i in range(len(nums)):
            if i > 0 and i+1 < len(nums) and (nums[i-1] != nums[i] and nums[i+1] != nums[i]):
                return nums[i]
            elif i == 0 and nums[i] != nums[i+1]:
                return nums[i]
            elif i == len(nums)-1 and nums[i] != nums[i-1]:
                return nums[i]