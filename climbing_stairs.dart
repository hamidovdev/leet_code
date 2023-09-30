    def climbStairs(self, n: int) -> int:
        sum = 0
        arr = [1,1]
        for i in range(n):
            arr.append(arr[-2] + arr[-1])
            sum += 1
        return arr[sum]