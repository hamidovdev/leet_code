def isPalindrome(self, x: int) -> bool:
        arr = []
        if x < 0:
            return False
        while(x):
            arr.append(x%10)
            x//=10
        m = ""
        x = ""
        if len(arr) % 2 == 0:
            for i in range(len(arr)//2):
                m += str(arr[i])
            for i in range(len(arr)//2,len(arr)):
                x += str(arr[i])
        else:
            for i in range(len(arr)//2):
                m += str(arr[i])
            for i in range(len(arr)//2+1,len(arr)):
                x += str(arr[i])
        if m == x[::-1]:
            return True
        else:
            return False