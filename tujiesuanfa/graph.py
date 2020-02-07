from collections import deque

graph = {}
graph["you"] = ["Alice", "Bob", "Claire"]
graph["Bob"] = ["Anuj", "Peggy"]
graph["Claire"] = ["Thom", "Jonny"]
graph["Alice"] = []
graph["Anuj"] = []
graph["Peggy"] = []
graph["Thom"] = []
graph["Jonny"] = []
print graph

def isBreadthFirstSearch(name):
    search_queue = deque()
    search_queue += graph[name]
    searched = []
    while search_queue:
        person = search_queue.popleft()
        if person not in searched:
            if person_is_seller(person):
                print person + " is a mango seller"
                return True
            else:
                search_queue += graph[person]
                searched.append(person)
    return False


def person_is_seller(person):
    return person[-1] == 'm'


print isBreadthFirstSearch("you")

