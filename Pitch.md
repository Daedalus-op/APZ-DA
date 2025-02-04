---
marp: true
theme: default
paginate: true
class: invert
#backgroundImage: url('https://marp.app/assets/hero-background.svg')
---

# **APZ-DA**

### Database Acceleration Application Based on Vitis Libraries

PES, Zoho, AMD Collaboration

---

# Team

- [Arun M](https://github.com/Arun-66) (PES)
- [Neha Anna Johns](https://github.com/neha-aj007) (PES)
- [Pranav Varkey](https://github.com/Daedalus-op) (PES)
- Anagha (Zoho)

---

# Table of Content

- [Motivation](#motivation)
- [Roadmap](#roadmap)
- [Status](#status)
- [Similar Works](#similar-works)
- [Possibilities](#possibilities)

---

# Motivation

- Accelerating database processing with the power of FPGAs are hard without good knowledge of FPGAs. This application aims to bridge that gap.
- We'll do this by creating an application that provides a layer of abstraction to the user but not sacrifice control
- We plan to use the vitis database libraries in this application. Which provide optimised hls kernels for database acceleration.

---

# Roadmap

1. Implement Vitis Libraries on FPGA
2. Optimisations
3. Package Application

---

# Status

## Queries In Focus

|  Queries  | Phase |          Remark           |
| :-------: | :---: | :-----------------------: |
|  SELECT   |   1   |  Porting the hls kernel   |
|  DELETE   |   1   | Porting custom hls kernel |
|  BITWISE  |   1   |       Synthesising        |
|   JOIN    |   1   |            TBD            |
| AGGREGATE |   1   |          Testing          |
|  UPDATE   |   1   |          On hold          |

---

# Similar Works

- [Data Analytics - Xilinx](https://github.com/Xilinx/data-analytics)
  - Big data analytics on FPGA boards
  - Limited support, only for AWS F1 instance and the u200 board
  - Last commit at 6 years ago

---

# Possibilities

- Database Encryptor
- Database Compressor and Disaster Recovery Migration
- DPR with kernels
- Multiple queries on a single board using DPR
