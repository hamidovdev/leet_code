def twoSum(self, nums: List[int], target: int) -> List[int]:
        result = []
        for j in range(len(nums)):
            for i in range(j+1,len(nums)):
                if nums[j]+nums[i] == target:
                    result.append(j)
                    result.append(i)
        return result