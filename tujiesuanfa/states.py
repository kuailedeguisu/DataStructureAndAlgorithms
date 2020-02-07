stations = {"kone": set(["id", "nv", "ut"]), "ktwo": set(["wa", "id", "mt"]), "kthree": set(["or", "nv", "ca"]),
            "kfour": set(["nv", "ut"]), "kfive": set(["ca", "az"])}

states_needed = set(["mt", "wa", "or", "id", "nv", "ut", "ca", "az"])
final_stations = set()


def find_best_station(my_states_needed):
    while my_states_needed:
        best_station = None
        states_covered = set()
        for station, states_for_station in stations.items():
            covered = my_states_needed & states_for_station
            if len(covered) > len(states_covered):
                best_station = station
                states_covered = covered
        my_states_needed -= states_covered
        final_stations.add(best_station)
    return final_stations


print find_best_station(states_needed)


