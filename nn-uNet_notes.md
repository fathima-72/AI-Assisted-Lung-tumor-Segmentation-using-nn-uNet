# nnU-Net workflow documented from the presentation

This document transcribes the workflow shown in the retained final presentation. It does not claim that the original server files have been recovered.

## 1. Environment variables shown

```bash
export nnUNet_raw=/root/nnUNet_raw
export nnUNet_preprocessed=/root/nnUNet_preprocessed
export nnUNet_results=/root/nnUNet_results
```

These paths refer to the original Shakti environment and will not necessarily exist on another machine.

## 2. Dataset layout shown

```text
Dataset001_NSCLC/
├── imagesTr/
├── labelsTr/
└── dataset.json
```

The presentation identifies the cohort as the NSCLC Radiogenomics dataset and reports 421 CT scans with tumor annotations. The original `dataset.json`, image files, masks, exact dataset version, and source citation are not retained in this repository. The layout above is illustrative and is not sufficient by itself to make a valid nnU-Net dataset.

## 3. Planning and preprocessing

```bash
nnUNetv2_plan_and_preprocess -d 1 --verify_dataset_integrity
```

The command plans and preprocesses dataset ID 1 and requests dataset-integrity verification. It requires a valid nnU-Net dataset in the configured raw-data directory.

## 4. Training and resuming

```bash
nnUNetv2_train 1 3d_fullres 0
```

The presentation documents training fold 0 using the `3d_fullres` configuration. It also shows the following resume command: `nnUNetv2_train 1 3d_fullres 0 --c`. Resuming requires the existing nnU-Net results/training directory and compatible checkpoint files. Neither is included here.

## 5. Checkpoint

The presentation names `checkpoint_best.pth` as the best trained model. The checkpoint itself was stored on the original server and is not available in this repository. Its contents and exact evaluation provenance have not been independently checked.

## 6. Scope

The presentation also describes prediction and comparison with reference annotations. It does not provide a complete inference script, a reproducible evaluation script, the exact case/slice for the representative Dice score, or the full logs needed to reproduce the reported results. Those should be added only if recovered or recreated and tested.
