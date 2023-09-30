def plusOne(self, digits: List[int]) -> List[int]:
    for i in range(len(digits)):
        digits[i]=str(digits[i])
    s = "".join(digits)
    p = []
    k = int(s)+1
    while k:
        p.append(k%10)
        k//=10
    return p[::-1]