# Targets Pipeline Project

This project demonstrates the use of the targets package in R for building a reproducible data pipeline. The goal is to analyze unemployment data for different geographic levels and generate visualizations. The pipeline includes data fetching, cleaning, analysis, and saving output plots to a specified directory.

### Script Files

**functions.R:** Contains custom functions used for data fetching, cleaning, and plotting.

**targets.R:** Defines the pipeline structure using targets and tarchetypes.

## Docker Setup

### Dockerfile

The project includes a Dockerfile to create a containerized environment for running the pipeline. Key dependencies like R, targets, and necessary R packages are pre-installed.

#### Running the Pipeline

1. Build the Docker image: 

```
docker build -t targets_pipeline .
```

2. Create a directory for saving plots:

```
mkdir fig
```
3. Run the container and execute the pipeline:

```
docker run --rm --name targets_pipeline_container -v your_own_path/fig:/home/graphs:rw targets_pipeline
```

4. Check the fig/ folder for the saved plots.
