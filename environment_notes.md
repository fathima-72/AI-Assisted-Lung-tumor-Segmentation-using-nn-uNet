# Environment notes

## Original environment

The final presentation states that data, preprocessing, model checkpoints, training logs, and prediction outputs were organized in the Shakti computing environment. The environment paths shown were:

- Raw data: `/root/nnUNet_raw`
- Preprocessed data: `/root/nnUNet_preprocessed`
- Results: `/root/nnUNet_results`

Access to that internship server has since changed. The original runtime, installed package versions, GPU details, logs, code files, dataset, and checkpoint are not currently available locally. This document therefore records only details explicitly shown in the presentation.

## Information still needed for reproducibility

- Python, PyTorch, nnU-Net v2, CUDA, and driver versions
- GPU model and available memory
- Exact dataset release and citation, and permission/terms of use
- Complete `dataset.json` and channel/label definitions
- Preprocessing plans and generated configuration files
- Exact training split and validation protocol
- Inference command, checkpoint used, and prediction outputs
- Metric implementation, aggregation method, case ID, and slice index

Do not guess these details. If a new experiment is performed, record them from the actual environment used.
