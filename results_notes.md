# Reported results and limitations

All results below are transcribed from the retained final presentation. Raw model outputs and logs were not available for independent verification.

## Reported values

| Value | Presentation context | Interpretation caution |
|---|---|---|
| 0.908 Dice | Representative axial CT slice for the nnU-Net qualitative result | Case ID, slice index, masks, and metric script are not specified in the extracted text. This is not a whole-volume or cohort-level score. |
| 0.6044 best EMA pseudo-Dice | nnU-Net, best reported around epoch 97 | Training-related pseudo-Dice; not to be labelled held-out test performance. |
| 0.503 validation Dice | Separate MONAI Residual 3D U-Net experiment, best reported at epoch 60 | Presentation describes an 84-patient held-out validation set. |
| 421 CT scans/patients | Dataset cohort for both experiments | Exact dataset release/version and case inclusion criteria need confirmation. |

The values above refer to different metrics and/or evaluation contexts and should not be treated as a direct model ranking.

## Limitations reported

- Independent-dataset validation is needed to assess generalizability.
- Reference GTV contours may vary between radiologists, especially at tumor margins.
- Small, irregular, or anatomically complex regions may have imperfect voxel-level overlap.
- The presentation notes extra predicted regions relative to the reference GTV annotation.
- Future evaluation was proposed with HD95, precision, recall, and sensitivity.

## What should be checked in a future run

1. Identify the exact case and slice used for the 0.908 result.
2. Recalculate Dice from the corresponding prediction and reference mask.
3. Keep slice-level, case-level whole-volume, and cohort-level metrics separate.
4. Record the evaluation split and whether each value is a training, validation, or test metric.
5. Report both over-segmentation and under-segmentation behavior, not Dice alone.
6. Add additional metrics only after implementing and testing their calculations.

## Research integrity note

The repository is a documentation reconstruction based on a presentation. It does not include original code, checkpoints, raw CT scans, masks, or logs, and does not independently reproduce the results. Any future reconstruction should be labelled as a new experiment.
