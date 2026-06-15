# NCI-Molecular-Mapping

## Beyond the Dashed Line: A Computational Workflow for Mapping Non-Covalent Interactions

This repository contains the automation scripts, optimized molecular coordinates, and step-by-step protocols for the **Non-Covalent Interaction (NCI) Mapping** curriculum implemented at **Calumet College of St. Joseph, University of Education, and Worcester State University**. This workflow is designed to move undergraduate chemistry students beyond qualitative "dashed line" representations to a quantitative, data-driven understanding of molecular forces.

---

## Overview

This project provides a "Simple-to-Complex" pedagogical ladder for teaching NCIs using the **Reduced Density Gradient (NCI-RDG)** method.

- **Phase 1:** Foundational training using a curated set of 10 molecules (e.g., salicylic acid, water trimers).
- **Phase 2:** Advanced application/capstone analysis of a DNA fragment.

## Software Requirements

To utilize this workflow, the following software packages are required:

1. **Gaussian 09/16 & GaussView 5.0/6.0** — Electronic structure calculations  
   - *Alternative: ORCA (free for academic use).* ORCA can be used to generate the necessary electron density files; a conversion script for ORCA-to-Multiwfn is included in the `/Protocols` folder.
2. **Multiwfn (v3.8+)** — NCI-RDG analysis
3. **Gnuplot** — High-resolution 2D scatter plot generation
4. **EPS Viewer** (e.g., GSview or Evince) — For viewing vector-graphic NCI signatures
5. **VMD (Visual Molecular Dynamics)** — 3D isosurface visualization

## Repository Contents

- **`/Molecules`**: Optimized `.fch` and `.log` files for the 10-molecule training set (`B3LYP/6-311+G(2d,p)`).
- **`/scripts`**: Custom Python/Bash automation scripts to streamline the data transition from Multiwfn output to VMD states.
- **`/DNA_Capstone`**: Pre-calculated density files and VMD state files for the DNA fragment case study.
- **`/Protocols`**: Comprehensive instructional materials for classroom deployment:
  - **Student Laboratory Manual**: Guided procedures for model construction, NCI analysis, and data interpretation.
  - **Instructor Manual**: Guided procedures for model construction, NCI analysis, and data interpretation.
  - **Collaborative Google Doc Templates**: Structured worksheets for student data collection (blank) and corresponding instructor keys for real-time grading and feedback.

## Quick Start

1. **Optimization:** Run the provided Gaussian input files in the `/Molecules` folder.
2. **Analysis:** Use the `NCI_Process.bat` script to automate the Multiwfn generation of RDG scatter plots and grid files.
3. **Visualization:** Load the resulting `.vmd` state files to view the color-coded isosurfaces:
   - **Blue** = Attraction
   - **Green** = van der Waals
   - **Red** = Steric repulsion

## Citation

If you use these scripts or the pedagogical framework in your own teaching or research, please cite our manuscript:

*Qurat Ul Ain, Tristan Dietiker, David Harnish, Muhammad Ali Hashmi, Eihab Jaber, Ahmed Lakhani,* **"Beyond the Dashed Line: Utilizing NCI-RDG Visualization to Map the Electronic Landscape of Molecular Interactions"** (2026).
