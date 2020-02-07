graph = {"start": {}}
graph["start"]["a"] = 6
graph["start"]["b"] = 2
print graph["start"].keys()
print graph["start"]["a"]
print graph["start"]["b"]

graph["a"] = {}
graph["a"]["fin"] = 1
graph["b"] = {}
graph["b"]["a"] = 3
graph["b"]["fin"] = 5

graph["fin"] = {}

infinity = float("inf")
costs = {"a": 6, "b": 2, "fin": infinity}

parents = {"a": "start", "b": "start", "fin": None}

processed = []


def djksitala(my_costs):
    node = find_lowest_cost_node(my_costs)
    while node is not None:
        cost = my_costs[node]
        neighbours = graph[node]
        for n in neighbours.keys():
            new_cost = cost + neighbours[n]
            if my_costs[n] > new_cost:
                my_costs[n] = new_cost
                parents[n] = node
        processed.append(node)
        node = find_lowest_cost_node(my_costs)
    return my_costs


def find_lowest_cost_node(my_costs):
    lowest_cost = float("inf")
    lowest_cost_node = None
    for node in my_costs:
        cost = my_costs[node]
        if cost < lowest_cost and node not in processed:
            lowest_cost = cost
            lowest_cost_node = node
    return lowest_cost_node


print djksitala(costs)

