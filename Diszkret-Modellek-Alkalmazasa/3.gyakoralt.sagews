︠str="heElLo WorLd"
def foo(str):
    res=str
    for c in str:
        res += c.upper()
    return res
print(foo(str))
#heElLo WorLdHEELLO WORLD

def Is_Reflexive(X, L):
    for i in X:
        if(i,i) not in L:
            return False
    return true


Is_Reflexive({1, 2, 3, 4}, [(1, 1), (2, 2), (3, 3), (4, 4)]) #true
Is_Reflexive({1, 2, 3}, [(1, 1), (1, 2), (2, 2)]) #false

def Is_Transitive(X, L):
    for a in X:
        for b in X:
            for c in X:
                if(a,b) in L and (b,c) in L and (a,c) not in L:
                    return False
    return True

Is_Transitive({1, 2, 3}, [(1,1), (1,2), (1,3), (2,1), (2,2), (2,3), (3,1), (3,2), (3,3)]) #true
Is_Transitive({1, 2, 3, 4}, [(1, 2), (2, 3), (1, 4), (2, 2)]) #false


# X hosszu primszam sorozatot keszit
def LetsCreateTheLongestPrime(X):
    result = []
    counter=2
    while len(result)<X:
        if(is_prime(counter)):
            result = []
        else:
            result.append(counter)
        counter+=1
    return result

LetsCreateTheLongestPrime(3)  #[8, 9, 10]
LetsCreateTheLongestPrime(4)  #[24, 25, 26, 27]
LetsCreateTheLongestPrime(10) #[114, 115, 116, 117, 118, 119, 120, 121, 122, 123]

def hanyPrimVanEbbenAzIntervalumban(X):
    return len(prime_range(X))

hanyPrimVanEbbenAzIntervalumban(11)

#prim e vagy nem
is_prime(6)

def Compound_List(N):
    result = []
    counter = 2
    while len(result) < N:
        if is_prime(counter):
            result = []
        else:
            result.append(counter)
        counter += 1
    return result

Compound_List(3)
Compound_List(4)
Compound_List(5)
Compound_List(10)
Compound_List(100)


# fsor3fel3
#hany prímszam van x ig
len(prime_range(11))

n=1000
len(prime_range(n))

#ez nemtudom mivolt xd
f = [len(prime_range(n)) for n in range (1,1000)]
a = list_plot(f, plotjoined=True, color='blue')
b = plot(x/log(x), (1,1000), color='red')
a + b















