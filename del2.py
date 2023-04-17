def dot_product(x, s):
    result = 0
    for i in range(len(x)):
        result += x[i] * s[i]
    return result % 2

def classical_vazirani_algorithm(f, n):
    s = [0] * n
    for i in range(n):
        x = [0] * n
        x[i] = 1
        s[i] = f(x)
    return s

# Define the secret binary string s
secret_string = [1, 0, 1, 1]

# Define the function f(x) for the dot product of x and s
def f(x):
    return dot_product(x, secret_string)

# Find the secret string using the classical algorithm
n = len(secret_string)
found_secret_string = classical_vazirani_algorithm(f, n)
print("Secret string (classical):", found_secret_string)
