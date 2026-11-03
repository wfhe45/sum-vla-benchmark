# SUM-VLA: Closed-Loop Robotic Ultrasound Benchmark

[![GitHub Pages](https://img.shields.io/badge/Demo-GitHub%20Pages-black?style=for-the-badge&logo=github)](https://wfhe45.github.io/sum-vla-benchmark/)
[![Paper](https://img.shields.io/badge/Paper-SUM--VLA-blue?style=for-the-badge)](https://arxiv.org/abs/2608.16074)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

Interactive visual demonstrations of autonomous 6-DoF robotic abdominal ultrasound scanning across **SUM-VLA** and **TUM SonATA** benchmarks using the **ACTA (Action-Conditioned Temporal Ultrasound Adapter)** policy.

---

## 🌐 Live Interactive Demonstrations (GitHub Pages)

Experience the full interactive 5-panel panoramic viewer with real-time PyBullet kinematic simulation, fine 3D EEF trajectory tracking, and click-to-seek clinical reasoning phase synchronization:

👉 **[Launch Interactive Web Demo](https://wfhe45.github.io/sum-vla-benchmark/)**

---

## 📊 Benchmark Results & Direct Video Access

### 1. SUM-VLA Clinical Ultrasound Benchmark (5 Tasks)

| Task Name | Episode ID | Pos Error | Total Steps | Direct MP4 Video |
| :--- | :---: | :---: | :---: | :--- |
| **Task 1: Abdominal Aorta Sagittal** | Ep 026 | **0.372 mm** | 239 | [Watch / Download MP4](static/videos/usvla/usvla_task1_aorta_wide5panel.mp4) |
| **Task 2: Subxiphoid Transverse** | Ep 035 | **0.428 mm** | 216 | [Watch / Download MP4](static/videos/usvla/usvla_task2_subxiphoid_wide5panel.mp4) |
| **Task 3: Right Subcostal Oblique** | Ep 037 | **0.449 mm** | 204 | [Watch / Download MP4](static/videos/usvla/usvla_task3_subcostal_wide5panel.mp4) |
| **Task 4: Right Kidney Long-Axis** | Ep 071 | **0.395 mm** | 117 | [Watch / Download MP4](static/videos/usvla/usvla_task4_kidney_long_wide5panel.mp4) |
| **Task 5: Right Kidney Transverse Hilum** | Ep 004 | **0.412 mm** | 124 | [Watch / Download MP4](static/videos/usvla/usvla_task5_kidney_hilum_wide5panel.mp4) |

---

### 2. TUM SonATA Robotic Ultrasound Benchmark (3 Tasks)

| Task Name | Episode ID | Pos Error | Total Steps | Direct MP4 Video |
| :--- | :---: | :---: | :---: | :--- |
| **Task 1: Continuous Scanning** | Ep 1958 | **3.086 mm** | 210 | [Watch / Download MP4](static/videos/sonata/sonata_task1_scanning_wide5panel.mp4) |
| **Task 2: Anatomical Navigation** | Ep 1985 | **3.896 mm** | 221 | [Watch / Download MP4](static/videos/sonata/sonata_task2_navigation_wide5panel.mp4) |
| **Task 3: Precision Placement** | Ep 1925 | **3.805 mm** | 344 | [Watch / Download MP4](static/videos/sonata/sonata_task3_placement_wide5panel.mp4) |

---

## 💻 Local Offline Viewing

Simply double-click `index.html` or start a local Python HTTP server:

```bash
python3 -m http.server 8080
```
Then navigate to `http://localhost:8080` in your web browser.
