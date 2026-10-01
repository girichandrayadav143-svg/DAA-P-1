
n = int(input("Enter number of vertices: "))

graph = {}


for i in range(n):
    vertex = input("Enter vertex: ")
    neighbours = input("Enter neighbours separated by space: ").split()
    graph[vertex] = neighbours

def bfs(graph, start):
    visited = set()
    queue = deque([start])
    visited.add(start)

    while queue:
        vertex = queue.popleft()
        print(vertex, end=" ")

        for neighbour in graph[vertex]:
            if neighbour not in visited:
                visited.add(neighbour)
                queue.append(neighbour)


start = input("Enter starting vertex: ")

print("BFS Traversal:")
bfs(graph, start)

               
