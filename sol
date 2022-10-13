Has Single Cycle

def hasSingleCycle(array):
    counter = 1
    visited = [0 for i in range(len(array))]
    visited[0] = 1
    current_index = 0
    while counter != len(array):
        current_index = current_index + array[current_index]
        current_index = current_index % len(array)
        visited[current_index] += 1
        counter += 1

    print(visited)
    print(current_index + array[current_index])

    final = (current_index + array[current_index]) % len(array)
    for i in visited:
        if i != 1:
            return False


    return final == 0
