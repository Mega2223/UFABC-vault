---
tags:
  - algoritmo
  - computação
authors: Júlio César
---
## Definição

É um #algoritmo de ordenação baseado no princípio de divisão e conquista, normalmente implementado com base em um programa de [[recursão]]. O algoritmo visa dividir a array em arrays menores, arranjar elas e posteriormente as juntar em pares, onde cada par de arrays é colocado na array original por meio de um algoritmo de contagem que já presume que estas sub-arrays estejam ordenadas.

## Performance

A [[Complexidade Assintótica|complexidade de pior caso]] do merge sort é $O (n \log (n))$, e _normalmente_ têm complexidade espacial auxiliar $O(n)$, mas é possível fazer uma implementação de complexidade espacial de $O(1)$[^1].
## Implementação
```python
import math

def merge_sort(array, begin = 0, end = None):
    n = len(array)
    if end == None: end = n - 1

    middle = math.floor(begin+(end-begin)/2)
    
    if end-begin > 1:
        merge_sort(array,begin,middle)
        merge_sort(array,middle+1,end)
    elif end-begin == 0:
        return True
    a = array[begin:middle+1]; a_counter = 0
    b = array[middle+1:end+1]; b_counter = 0
    res = []

    while b_counter < len(b) or a_counter < len(a):
        if b_counter == len(b) or (a_counter < len(a) and a[a_counter] < b[b_counter]):
            res.append(a[a_counter])
            a_counter+=1
        else:
            res.append(b[b_counter])
            b_counter += 1
    for i in range(0,len(res)):
        array[begin + i] = res[i]
    return True
    
v = []
inp = input().split(" ")
for i in range(0,len(inp)): v.append(int(inp[i]))

merge_sort(v)
out = ""
for i in v:
    out += str(i) + " "
print(out)
```

[^1]: Skiena, Steven S. (2008). "4.5: Mergesort: Sorting by Divide-and-Conquer". _The Algorithm Design Manual_ (2nd ed.). Springer. pp. 120–125.
