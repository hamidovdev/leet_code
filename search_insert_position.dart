def searchInsert(self, nums: List[int], target: int) -> int:
        cnt = 0
        if target in nums:
            return nums.index(target)
        elif max(nums) < target:
            return len(nums)
        elif target not in nums and max(nums)>target:
            for i in range(len(nums)-1):
                if nums[i] < target:
                    cnt+=1
        return cnt