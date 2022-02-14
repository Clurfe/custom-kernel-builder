#! /bin/bash
KernelBranch="r-oss-base-release-SLMK"

IncludeFiles "${MainPath}/device/begonia-r-oss.sh"
CustomUploader="Y"
# UseSpectrum="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/begonia_kernel"
# spectrumFile="bego-on-p.rc"
FolderUp="shared-file"
TypeBuildTag="[Stable][SLMK][FullLTO][806Mhz]"

CloneKernel "--depth=1"
CloneZyCFoutTeenClang
# DisableMsmP
DisableThin
EnableRELR
CompileClangKernelLLVM && CleanOut