---
tags:
  - algoritmo
  - computação
  - incompleto
---
## Definição

## Implementação
```python
def flip(array, n1, n2):
    array[n2] = array[n1] + array[n2]
    array[n1] = array[n2] - array[n1]
    array[n2] = array[n2] - array[n1]

def quick_sort(array, begin=0, end= None):
    n = len(array)
    if end == None: end = n - 1
    pivot = end
    p = pivot - 1

    if end - begin <= 0: return True # Lista de tamanho 1 ou 0

    while p >= 0:
        if array[p] < array[pivot]:
            for k in range(0,p):
                if(array[k]>=array[pivot]):
                    flip(array,p,k)
        p-=1
    
    for i in range(begin,end):
        if array[pivot] < array[i]:
            flip(array,i,pivot)
            pivot = i
            break
    quick_sort(array,begin,pivot-1)
    quick_sort(array,pivot+1,end)

v = []
inp = input().split(" ")
for i in range(0,len(inp)): v.append(int(inp[i]))

quick_sort(v)
out = ""
for i in v:
    out += str(i) + " "
print(out)
```