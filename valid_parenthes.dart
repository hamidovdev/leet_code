class Stack:
    def __init__(self):
        self.__data = []
        self.__size = 0

    def push(self, vl):
        self.__data.append(vl)
        self.__size = self.__size + 1

    def empty(self):
        return self.__size == 0

    def pop(self):
        if not self.empty():
            self.__size -= 1
            return self.__data.pop()
        else:
            raise Exception("Stack empty")

    def top(self):
        if not self.empty():
            return self.__data[-1]

    def clear(self):
        self.__size = 0
        self.__data.clear()


class Solution:
    def isValid(self, s):
        st = Stack()
        for element in s:
            if element in "({[":
                st.push(element)
            else:
                if not st.empty() and element == ")" and st.top() == "(":
                    st.pop()
                elif not st.empty() and element == "]" and st.top() == "[":
                    st.pop()
                elif not st.empty() and element == "}" and st.top() == "{":
                    st.pop()
                else:
                    return False
        return st.empty()