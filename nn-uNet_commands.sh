#!/usr/bin/env bash
# Commands transcribed from the final presentation.
# Documentation only: this is NOT a complete runnable reproduction script.
# The original dataset, nnU-Net configuration, checkpoints, and server files are unavailable.
# Review the paths and confirm the dataset exists before running anything.

set -euo pipefail

# 1. Environment paths shown in the original Shakti environment
export nnUNet_raw=/root/nnUNet_raw
export nnUNet_preprocessed=/root/nnUNet_preprocessed
export nnUNet_results=/root/nnUNet_results

# 2. Plan/preprocess dataset ID 1 and verify dataset integrity
nnUNetv2_plan_and_preprocess -d 1 --verify_dataset_integrity

# 3. Train fold 0 with the 3D full-resolution configuration
nnUNetv2_train 1 3d_fullres 0

# 4. Resume training only if the original training directory/checkpoint exists
nnUNetv2_train 1 3d_fullres 0 --c
