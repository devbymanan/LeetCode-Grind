class Solution(object):
    def romanToInt(self, s):
        output = 0

        values = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }

        count = len(s)

        for i in range(count):
            if i + 1 < count and values[s[i]] < values[s[i + 1]]:
                output -= values[s[i]]
            else:
                output += values[s[i]]

        return output