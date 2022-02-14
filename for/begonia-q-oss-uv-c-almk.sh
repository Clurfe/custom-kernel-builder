#! /bin/bash
KernelBranch="q-oss-base-release-uv-ALMK"

IncludeFiles "${MainPath}/device/begonia-q-oss.sh"
CustomUploader="Y"
# UseSpectrum="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/begonia_kernel"
# spectrumFile="bego-on-p.rc"
FolderUp="shared-file"
TypeBuildTag="[Stable][ALMK][806Mhz]"

CloneKernel "--depth=1"
CloneGCCOld
CloneSdClang
DisableLTO
# CompileClangKernel
# DisableMsmP
# DisableThin
EnableRELR
CompileClangKernelLLVMB