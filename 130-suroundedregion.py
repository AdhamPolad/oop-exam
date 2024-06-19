class Solution:
    def solve(self, board: List[List[str]]) -> None:
        """
        Do not return anything, modify board in-place instead.
        """
        if not board and not board[0]:
            return
        
        rows, cols = len(board), len(board[0])

        def dfs(i,j):
            if 0<=i<rows and 0<=j<cols and board[i][j] == "O":
                board[i][j] = "E"
                directions = [(-1,0),(1,0), (0,-1), (0,1)]
                for di, dj in directions:
                    dfs(i+di, j+dj)
        

        for i in range(rows):
            dfs(i,0)
            dfs(i, cols-1)
        
        for j in range(cols):
            dfs(0,j)
            dfs(rows-1,j)
        
        for i in range(rows):
            for j in range(cols):
                if board[i][j] == 'O':
                    board[i][j] = 'X'
                elif board[i][j] == "E":
                    board[i][j] = "O"