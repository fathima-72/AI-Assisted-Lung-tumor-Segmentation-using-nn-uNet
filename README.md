# AI-Assisted Lung Tumor Segmentation Using nnU-Net

**Research area:** Medical Imaging · Deep Learning · Computational Oncology

## 1. Project Overview

This project explored deep-learning-based segmentation of gross tumor volume (GTV) from computed tomography (CT) images of patients with non-small cell lung cancer (NSCLC).

The primary experiment used nnU-Net v2 with a 3D full-resolution configuration. A separate experiment using a MONAI-based 3D U-Net was also explored to investigate an alternative segmentation approach.

The work was conducted as part of a Machine Learning Research Internship at TiniLLM Labs.

## 2. Objectives

- Explore automated 3D lung tumor segmentation from CT images.
- Investigate nnU-Net v2 for medical image segmentation.
- Explore a MONAI-based 3D U-Net as a separate experimental approach.
- Compare predicted segmentation masks with reference annotations.
- Document quantitative results, visual observations, and methodological limitations.

## 3. Technologies and Tools

- Python
- nnU-Net v2
- MONAI
- PyTorch-based deep learning
- NIfTI medical imaging data
- Shakti Jupyter computing environment

## 4. Methodology

The documented workflow included:

1. Preparing the dataset in the nnU-Net directory structure.
2. Verifying dataset integrity and preprocessing the data.
3. Training a 3D full-resolution nnU-Net model.
4. Generating segmentation predictions.
5. Comparing predictions with reference tumor masks.
6. Evaluating segmentation performance and examining visual differences.

A separate MONAI-based 3D U-Net experiment was also explored.

## 5. Reported Experimental Results

The internship presentation reported the following results:

| Experiment | Reported metric | Context |
|---|---|---|
| nnU-Net v2 | 0.6044 | Best EMA pseudo-Dice reported during training |
| MONAI-based 3D U-Net | 0.503 | Best reported validation Dice |
| nnU-Net representative slice | 0.908 | Slice-level Dice reported for a representative image |

These metrics describe different evaluation contexts and should not be interpreted as directly comparable results. The original training logs and model checkpoints are not currently available for independent verification.

## 6. Limitations

- The original code, trained checkpoints, and full training logs are not currently available in this repository.
- The original computing environment was accessed through an internship server that is no longer accessible to me.
- Predicted segmentation masks may include regions beyond the reference annotations.
- Further validation is needed using clearly documented evaluation splits and additional metrics, such as precision, recall, and Hausdorff distance.
- These results do not establish clinical readiness.

## 7. Repository Status

This repository initially documents the project using information retained in the final internship presentation.

It does not claim to contain the original complete implementation or to reproduce the original experiments. Any future reconstructed implementation or new experiment will be documented separately.

## 8. Acknowledgements

I gratefully acknowledge **Harish V G** for his mentorship and guidance during my Machine Learning Research Internship at **TiniLLM Labs**.

I also acknowledge the creators and maintainers of nnU-Net, MONAI, and the other resources used in this project.

## 9. Author

**Tasneem Fathima**  
B.Sc. Bioinformatics, Statistics and Data Science  
Garden City University, Bengaluru, India

## 10. Disclaimer

This is an educational and research project. It is not intended for clinical diagnosis or treatment decisions.
