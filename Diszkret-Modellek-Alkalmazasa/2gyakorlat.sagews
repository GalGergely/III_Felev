︠# végrehajtani: shift+enter
# 1

factorial(1000)

# 2

numerical_approx(pi, digits=5) # 5 kettes számrendszerben 5 db értékes bit
n(pi, digits=5)

n(pi, digits=1001)

n(e, digits=1001)

# 3

(3+2*I)*(5-3*I)

# 4

factor(5342634632512543646623001324)

# 2.Feladatsor
# alapvető adatszerkezetek

L = [1, 2, 3, 4]
print(L)

L = [1..10]
print(L)

L = [ x for x in [1..10] ]
print(L)

L = [ x for x in [1..10] if x > 5 ]
print(L)

L = [ 2*x for x in [1..10] if x > 5 ]
print(L)

# 1 Írassuk ki illetve tároljuk listában az első 100 db köbszámot.

L = [ x^3 for x in [1..100]]
print(L)

# 2 Írassuk ki illetve tároljuk listában az első 100 db természetes szám közül a 3-mal oszthatóak köbét.

L = [ x^3 for x in [1..100] if x%3 == 0 ]
print(L)

# sztringek
str = "Hello world"
print(str)
print(str[0])
#str[1] = 'a' ilyen nincs
str += 'a'
print(str)

# megjegyzés, a valtozo tipusa felulirhato

x = 2
print(2)
x = "Hello world"
print(x)

# 3

def foo(p, x):
    print(p)
    x += 1
    print(x)
    return 10

retval = foo("hello world", 5)
print(retval)

# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring egy olyan másolatával, ahol a páros indexű karakterek duplán szerepelnek. Például az alma sztringre a helyes eredmény aalmma.

def foo(string):
    result = ""
    for idx in [0..(len(string)-1)]:
        result += string[idx]
        if idx % 2 == 0:
            result += string[idx]
    return result

foo("alma")

# repr(...) -> sztringgé konvertál

string = "Hello world"
for idx in [0..(len(string)-1)]:
    print("idx=" + repr(idx) + ", string[idx] = " + string[idx])

randint(0, 2)


# Írjon Python/SageMath függvényt, amely sztringet kap paraméterként, és visszatér a sztring Mocking Spongebob Squarepants egy véletlenszerű példányával. Írja meg a függvény olyan változatát is, amely garantálja, hogy a mondatkezdő betű mindig nagybetű.
def MockingSpongebob(string):
    result = ""
    for (idx, ch) in enumerate(string):
        if idx == 0 or randint(0, 1) == 0:
            result += ch.upper()
        else:
            result += ch.lower()
    return result

MockingSpongebob("Python is an easy to learn, powerful programming language.")

'a'.upper()