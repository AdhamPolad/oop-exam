class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        if rowIndex == 0:
            return [1]
        
        row = [1]

        for i in range(1, rowIndex+1):
            new_row = [1]*(i+1)

            for j in range(1, i):
                new_row[j] = row[j-1] + row[j]
            
            row = new_row
        return row

# Time Complexity: O(n**2)
# Space Complexity: O(n**2)
 