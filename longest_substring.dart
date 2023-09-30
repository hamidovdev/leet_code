    def lengthOfLongestSubstring(self, s: str) -> int:
        arr = []
        max = 0
        if len(s) == 1:
            return 1
        for i in range(len(s)):
            arr.append(s[i])
            for j in range(i+1,len(s)):
                if s[j] in arr:
                    if len(arr)>max:
                        max = len(arr)
                    break
                arr.append(s[j])
                if len(arr)>max:
                    max = len(arr)
            arr = []
        return max