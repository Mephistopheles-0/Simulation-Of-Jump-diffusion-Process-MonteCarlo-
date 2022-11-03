# Simulation-Of-Jump-diffusion-Process-MonteCarlo-

-------------------------------------------------

Diffusion processes are continuous, and they are often criticized for this very reason, as sudden jumps are indeed observed in financial markets. A simple approach to incorporate jumps is to add the increments of a compound Poisson process, which is characterized by a rate (Lambda) and a distribution of the jump size. In practice, this means that jump epochs are separated by a stream of independent exponential variables with rate (Lambda), and that at each such epoch we have to add a random jump size to the increment of the diffusion component.

How to add normally distributed jumps? The theoretical framework we need is provided by the theory of Levy processes, which generalize both diffusions and Poisson (pure jump) processes.

A key result is the Levy-Ito decomposition, the theorem states that we may decompose a Levy process into separate components, accounting for diffusion and jump subprocesses.
this is an illustration of how we may take advantage of this theorem by adding a jump component to the generalized Wiener process. To this aim, we shall take advantage of the properties of the Poisson process:

1)• The number N of jumps in the time interval [0, T] is a Poisson random variable with parameter (Lambda * T).
2)• Conditional on N, the jump epochs are a sequence of N i.i.d. uniform variables on [0, T]. 

Therefore, in order to generate a sample path of this jump-diffusion process, we may :

1. Generate the increments of the diffusion component
2. Sample the number of jumps as a Poisson variable.
3. Generate the time epochs as uniform random variables.
4. Sample the jump sizes and add them to the corresponding increments of the diffusion process.
