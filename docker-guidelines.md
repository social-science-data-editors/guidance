
---
layout: withtoc
title: "Docker guidelines"
---


NOTE: Apptainer is used throughout, but as of 2023-10, is equivalent to Singularity.

## Configuration and creation

- Specify the version of Docker, of Dockerfile (if relevant), and of any export format used.
- Same if using Apptainer, or any other container generating program.
- Specify the container runtime used to run the container (need not be the same as what originally created the container)
- Provide the [Dockerfile](https://docs.docker.com/engine/reference/builder/), [Apptainer container recipe](https://apptainer.org/user-docs/2.5/container_recipes.html)
- Use publicly provided "trusted" container images as a basis. These are typically single-dimensional names (`ubuntu`, `python`) or prefaced by `library`. These are generally well-preserved and official containers. Container images may also be considered "trusted" when they are created by the maintainer team of the software (e.g., [Rocker project](https://rocker-project.org/) or [Conda-forge](https://hub.docker.com/u/condaforge)). Do not use random containers found on the internet.
- In general, the container should handle all the key base software configuration (version of R, Python) and any auxiliary dependencies (Linux libraries necessary to compile R packages). 
- If software in a container requires a license or API key, this should be explicitly mentioned, and the creator is responsible of ensuring that the license or API key is not included in the container as distributed.
- In general, the actual core analysis data and code should NOT be included in the container. 
- An `entrypoint` ([Docker](https://docs.docker.com/engine/reference/builder/#entrypoint)), `runscript` ([Apptainer](https://apptainer.org/docs/user/latest/definition_files.html#runscript)) or default command ([Docker: CMD](https://docs.docker.com/engine/reference/builder/#cmd)) should be specified sparingly. Ideally, this corresponds to the execution of the replication package's main control script, e.g., `stata-mp -b do main.do` (PROVIDE PROPER EXAMPLE WITH CMD AND ENTRYPOINT)

## Running

- Instructions on how to run a container using a specific container runtime (`docker`, `apptainer`, `runc`, etc.) are appreciated, but should not be conveyed as authoritative, as there are many equivalent ways of running a container.
- Certain container hosts may have a reduced set of instructions (e.g., Azure) that do not allow all actions used by `docker` or `apptainer`. If aware, this should be pointed out.
- All analysis data and code should be present externally, organized so they can be mapped into the container.
- Runtime arguments should map the externally provided analysis data and code into the container, e.g., `docker run -it --rm -v "$(pwd)":/project -w /project mydocker`. 
- Output from the analysis code should be written to a location that is also mounted into the container (e.g., to `/project/output` in the above example.)
- All code should be runnable without the container as well. 
- Optionally: it is permissible, but not suggested, that the analysis code be run interactively. 

## Discouraged

- Since it is feasible to run interactive environments, it is possible to create containers that are geared towards interactive development (Jupyter notebooks, Rstudio). The use of such environments is allowed, as long as the reproducible code does not rely on such environments. In other words, while Rstudio might display the code, and allow to interact with it, the core analysis should be reproducible without the use of Rstudio.
  - Example: `Rscript main.R`. 
  - Equivalently, Jupyter notebooks should be executed non-interactively as `jupyter nbconvert --execute --to notebook --inplace your-notebook.ipynb` or `jupyter nbconvert --execute --to webpdf --no-input your-notebook.ipynb` (requires `pip install nbconvert[webpdf]`)