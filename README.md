# A Playground for RAG-related Stuff

[![Tests](https://github.com/habedi/rag-playground/actions/workflows/tests.yml/badge.svg)](https://github.com/habedi/rag-playground/actions/workflows/tests.yml)

This repository is a playground for everything related
to [retrieval augmented generation (RAG)](https://aws.amazon.com/what-is/retrieval-augmented-generation/). It contains
scripts,
notebooks, and other resources to experiment with RAG and its applications.

![RAG](data/static/RAG.svg)

## Installing Poetry

To get started you need to have [Poetry](https://python-poetry.org/) installed. You can install
Poetry by running the following command in the shell.

```bash
pip install poetry
```

When the installation is finished, run the following command in the shell in the root folder of this repository to
install the dependencies and create a virtual environment for the project.

```bash
poetry install
```

After that, enter the Poetry environment by invoking the poetry shell command.

```bash
poetry shell
```

If everything went well, you should see the `(rag-playground)` prefix in your shell prompt indicating that you are in
the
Poetry environment. You can now run the scripts and notebooks in this repository.

## Structure of the Repository

The repository is structured as follows:

- `bin`: Includes scripts that can be run from the command line; to download data, for example.
- `data`: Includes data files.
- `notebooks`: Includes Jupyter notebooks for experiments, sample applications, etc.
- `secrets`: Includes secrets, such as API keys, that should not be shared publicly.
- `src`: Includes reusable Python code that can be used in notebooks or other places.
- `tests`: Includes tests for the scripts and notebooks.
- `pyproject.toml`: The Poetry configuration file that includes the list of dependencies.
- `LICENSE`: The license file.
- `README.md`: This file.

# List of Notebooks

| Notebook                                                                                   | Description                                                  |
|--------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| [embedding_and_indexing_documents](notebooks/basic/embedding_and_indexing_documents.ipynb) | This notebook demonstrates how to embed and index documents. |

## List of Important Papers

| Title                                                            | Authors      | Year | Link                                      |
|------------------------------------------------------------------|--------------|------|-------------------------------------------|
| Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks | Lewis et al. | 2020 | [arXiv](https://arxiv.org/abs/2005.11401) |

## License

Most files in this repository are licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
