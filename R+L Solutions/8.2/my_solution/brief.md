# derivation 5.6.2025 outline R+L 8.2

## context/ask
- analyzing how a wavepackets centroid changes over time.
- we are doing this because it connects position  **position-space behavior** of the wavefunction with its **momentum-space structure** using dispersion relation
- describes how localized quantum particles 'move' when represented as wavefunction

---

## structure of wavefunction  
- start with standard plane wave decomp.
- in semiclassical limit, no potential just free evolution govered by dispersion \(\omega(k)\)
- this sets us up for a stationary phase arg i'll make later when talking about group velocity.

---

## I define centroid
- the centroid is just a quantum analog of the center of mass
- this is the average over position weighted by probability density
- after this will take the time dervative
- feels like tracking the 'bulk' motion of the wavepacket, classically would follow well def. path
  - esentially what we are trying to prove here for QM


---

## time dervative of expectation value
- when i take \(\frac{d}{dt} \langle r(t) \rangle\) i am taking a derivative inside an integral
- pushes into the time dervative of the density \(|\psi|^2\) which i expand using chain rule.

**of note**
\[
\partial_t |\psi|^2 = \psi^* \partial_t \psi + \psi \partial_t \psi^*
\]

---

## take partial phi/partial t using w(k)
- each component evolves with its own frequency \(\omega(k)\)
- thus the time dervative pulls down a \(-i\omega(k)\)
- i'm calling this out as important, ties amplitude evolution to dispersion relation.

**of note:**  
want to emphasize this point, this is the *only* place the physics of the medium or particle mass enters

---

## rewrite time dervative of centroid
- integrand becomes the imaginary part of the product with the term \(\psi^*\) + a new integral.
- still messy in position space, lets clean it up by moving to momentum space


---

## from goldstien/fourier space/momentum space
- when we switch to momentum space, we get to rewrite \(\psi(r,t)\) as a Fourier integral
- I use the identiy involving \(\int r e^{i(k - k')r} dr = i\delta'(k - k')\).”

**of note:**  
goldstein does this all the time, also seen this in quantum when working with currents and expectation values.

---

## conclusion
putting it together, the dervative becomes the expectation value of \(\frac{d\omega}{dk}\) which is the group velocity
\[
\frac{d}{dt} \langle r(t) \rangle = \left\langle \frac{d\omega}{dk} \right\rangle
\]

**of note:**  
so the expectation value of position...progates with the average group velocity. 
- for sure just ehrenfest's thm in disguise w/o external potential
---

# Other thoughts
- the derivation in general looks like it would hold for arbitrary dispersion relations
- group velocity isn't just a classical concept, but arises right out of QM.
- looks like wavepacket spreadking would just be dervatives of This also sets up intuitions for **wavepacket spreading** of \(\omega(k)\)

---

## thoughts while solving
### why group velocity but not phase velocity?  
**A:**  
Because we’re tracking **position expectation**, which depends on how the **bulk of the wavepacket moves** — this motion is governed by the group velocity, not the phase of individual components.

---

### when are our assumptions not valid?  
- i believe when  \(A(k)\) is well defined/localized and smooth enough that we can get away with delta function
- oh \(\omega(k)\) must be  differentiable
- no potential

---

### what happens if \(\omega(k)\) is nonlinear? 
- ???

---

### relation to ehrenfest in particular? 
- Ehrenfest’s theorem says \(\frac{d}{dt} \langle x \rangle = \langle p \rangle/m\), here is equivilent to this when \(\omega(k) = \hbar k^2 / 2m\)
-  since then \(d\omega/dk = \hbar k / m = v\)

---

### can this be taken to 3d vector fields?  
- i don't see why not?
- would just be integrals over vector spaces
- group velo should become a vector average, but i can't see any other reasons why it would be prohibited.
