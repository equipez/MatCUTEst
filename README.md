# MatCUTEst

[![license](https://img.shields.io/badge/license-LGPLv3+-blue)](https://github.com/equipez/matcutest/blob/main/LICENCE.txt)
[![CI](https://github.com/equipez/matcutest/actions/workflows/ci.yml/badge.svg)](https://github.com/equipez/matcutest/actions/workflows/ci.yml)

## What

MatCUTEst is a package for facilitating the usage of [CUTEst](https://github.com/ralna/CUTEst) in MATLAB on Linux.

N.B.: Using CUTEst in MATLAB on MacOS is not supported anymore as of 2022. See the discussions in [CUTEst issue 28](https://github.com/ralna/CUTEst/issues/28).


## How to use?

First of all, clone this repository to the place where you want MatCUTEst to be installed.
You should then get a directory containing this README file.
We will refer to this directory as "**[the current directory]**" in the sequel.

1. Run the following in the terminal under **[the current directory]**:

    ```
    bash ./INSTALL
    ```

   It will install CUTEst and then mexify all the problems, **which may take a few hours**.

2. After 1, any CUTEst problem can be obtained in MATLAB by

   ```
   macup(PROBLEM_NAME)
   ```

   where you have to replace PROBLEM_NAME by a string that is the name
   of the problem. For example, try

   ```
   macup('AKIVA')
   ```

   This should give you a structure containing the full information of
   problem AKIVA, including its objective function, constraints (if any),
   starting point, etc. See [`mtools/README.txt`](mtools/README.txt) for more information.
