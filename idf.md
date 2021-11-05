# Deploy configuration
## 1. TITLE OF THE INVENTION

System and method to incorporate deploy information into the build pipeline

![Alt text here](diagram.svg)

## 2. NAMES OF THE INVENTORS

* Krishna Bhuyan
* Rodolfo Gabriel Esteves

## 3. TECHNOLOGY BACKGROUND

### 3.1 Problem Definition - What technical problem did you solve?

At a high abstraction, the compilation/deployment problem can be
described as a reconciliation of three sets of requirements:
1. The computational problem
2. The operational requirements of the deployment
3. The available computational resources

(1) is usually expressed completely in the source code and associated
assets for an application.  (2) is also partially expressed in the
source code, but that information is usually enriched at the time of
deployment, as the same algorithm may be required to operate in a
variety of environments (say, for example, as software-as-a-service
with varying SLAs, as a single-user application, or as a plug-in for a
platform, to name a few).  Traditionally, the full set of constraints
that constitute (2) are spread across a variety of sources, both
machine-executable and otherwise.  Examples of such sources include
deployment scripts, prose procedures meant for human consumption, and
even unwritten knowledge in system integrators' teams, and, at worse,
in the recorded experience in a single integrator's head.  The
"Infrastructure-as-Code" trend has made some strides in transferring
the only-for-humans portion to a machine-executable form, but that
transition is not yet complete.

The constraint set (3) is ultimately expressed in the hardware that
will ultimately execute the program (1) at the desired conditions (2).  

### 3.2 Previous Solutions (if any):

A. Describe any previous solutions used to solve the problem.
B. Describe disadvantages of those previous solutions.

## 4. OVERVIEW OF THE INVENTION

### 4.1	Short summary – In 1-3 sentences, describe the core of your solution.
### 4.2	Advantages – In 1-3 sentences, describe the value of the invention to Intel or to our customers. 

## 5. DETECTABILITY

### 5.1	Please describe in detail how your invention is detectable in a final product. 

#### A.	If your invention results in a specific structural feature please describe the appearance of that feature (e.g., include SEM/TEMs of actual features if available).  

#### B.	If there are visual inspection and/or reverse engineering techniques that can be used to identify the feature, please describe them. 

#### C.	If documentation such as product literature would show usage of the invention, please let us know what to look for in that regard.  

## 6.	DETAILS OF THE INVENTION

### 6.1	Provide details that help us fully understand your invention, including details on how you solved the technical problem, and at least one figure. You may also provide flowcharts, graphs, slides, or data to support your description. Where appropriate, please provide and explain any empirical support, such as experimental data or simulation results, that can demonstrate the viability of your invention.

## References

