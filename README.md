# rv-crypto

## Larva Script File

This is the source code used to specify the properties which are compilable by Larva
For more information about Larva please visit https://github.com/ccol002/larva-rv-tool

## RV - Function Call Tracing

We ran two experiments: one involving BadSSL traces, and another involving the top 100 websites. All these traces which have been obtained through binary instrumentation, along with the corresponding recorded timings, can be found in this repository.

## RV - Taint Inference

The stringMatching directory contains: the source code for the implementation of the taint inference RV monitor; along with source/sink buffers for: the overheads experimentation and the associated recorded timings; false positives experimentation; and those generated during the malware case study.


## SECube HSM

Artifacts related to the SECube experimentation can found in the SECube_Overheads directory, including code to feed web traffic directly to the NSS3 library and SECube, the web traffic itself an the recording timings.
