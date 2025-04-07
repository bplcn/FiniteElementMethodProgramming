# 有限单元法（编程部分）
卞培良, 顾鑫, 刘兆玮

河海大学 工程力学系

---

# Finite Element Method (Programming)
P.-L. Bian, X. Gu, Z. Liu

Department of Engineering Mechanics, Hohai University

<peiliang.bian@hhu.edu.cn>


---

The notebook introduces the basic concepts of finite element method and the programming part of the finite element method.
The program is written in Julia and IJulia environment is also used here.

## What is Julia?
Julia was designed for high performance. Julia programs automatically compile to efficient native code via LLVM, and support multiple platforms.

## What is IJulia?
[IJulia](https://github.com/JuliaLang/IJulia.jl) is a Julia-language backend combined with the Jupyter interactive environment (also used by IPython). This combination allows you to interact with the Julia language using Jupyter/IPython's powerful graphical notebook, which combines code, formatted text, math, and multimedia in a single document. IJulia is a Jupyter language kernel and works with a variety of notebook user interfaces.

## Installation 
First we need to guarantee `Julia` and IJulia in installed correctly. 
The binary package of the `Julia` can be downloaded from the [official website](https://julialang.org/).

The whole package can be downloaded from the Github with git command
```julia
    git clone https://github.com/bplcn/FiniteElementMethodProgramming
```


To make sure that there will be no server error, we need to set the Julia package server to the CERN mirror.
```Julia
ENV["JULIA_PKG_SERVER"] = "https://mirrors.cernet.edu.cn/julia"
```

Next we need to active the working enviroment
```Julia
] active .
```
Then the virtual environment can be activated for installation. 

Then we can install the required packages. It can be done with the following command
```Julia
] instantiate
```

Or install them one by one
```Julia
using Pkg
Pkg.add("IJulia")
Pkg.add("Plots")
Pkg.add("LaTeXStrings")
Pkg.add("GaussQuadrature")
Pkg.add("ForwardDiff")
Pkg.add("FEMSparse")
Pkg.add("AbaqusReader")
Pkg.add("AlgebraicMultigrid")
Pkg.add("IterativeSolvers")
Pkg.add("Preconditioners")
Pkg.add("WriteVTK")
Pkg.add("BenchmarkTools")
Pkg.add("SymRCM")
Pkg.add("UnicodePlots")
```