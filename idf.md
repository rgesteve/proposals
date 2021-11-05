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

The constraint set (3) is ultimately embodied in the hardware that
will ultimately execute the program (1) at the desired conditions (2).  

### 3.2 Previous Solutions (if any):

#### A. Describe any previous solutions used to solve the problem

The typical way compilers account for hardware differences (for hardware targets that share an instruction set) is to model them through *cost models*.  Such models have proven very valuable, but usually limit themselves to single core targets, or targets with multiple *homogeneous* cores.  When it comes to computational nodes that incorporate heterogeneous accelerators, the use of cost models is nowhere as prevalent.

However, computational nodes with an array of heterogeneous, specialized accelerators are increasingly popular as deployment targets.   For certain tasks, for example, Machine Learning large model training, such nodes, specifically a CPU hosting multiple GPUs, are the norm rather than the exception.  Provisioning such nodes is starting to become a few-clicks option for Cloud Providers, and for some use cases, like smart appliances, a specific configuration of accelerators is part of the workload specification (think, for example, "smart speakers" or "vision accelerators" in industrial systems).

To date, the lion's share of the work on efficiently deploying a workload in this kind of nodes concentrates on *runtime resource allocation*.  This aspect of the problem can be described as, given a deployment configuration and a (sufficiently flexible -- see below) binary executable payload, dispatch either parts or copies of the workload to those accelerators that are deemed best suited to, through their collective operation, meet some operational metric, such as minimize running time or energy consumption or maximize hardware utilization.  For reproducibility, and compliant with the "infrastructure-as-code" trend of recent years, a description of the deployment configuration usually takes some textual form (examples in Kubernetes resource/limits yaml configuration files and Microsoft "SuperScaler" traning configuration are shown below).   An orchestrator will typically take such configuration description upon starting the workload, and make the appropriate binary/accelerator assignments.

#### B. Describe disadvantages of those previous solutions

The main limitation to the *status quo* as described above is that the accelerator assignment decisions are only possible if compiled code already exists and can be placed in the desired device (in what follows, we will use the terms "accelerator" and "device" interchangeably).  This assumes that the compiler having generated appropriate code beforehand, or the runtime system having the ability to generate code on-the-fly.  Either of these solutions incurs in costs that are reduced or elided by the method we are proposing in this paper.

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

