# A Playground for RAG-related Stuff

[![Tests](https://github.com/habedi/rag-playground/actions/workflows/tests.yml/badge.svg)](https://github.com/habedi/rag-playground/actions/workflows/tests.yml)
[![License](https://img.shields.io/github/license/habedi/rag-playground)](https://github.com/habedi/rag-playground/blob/main/LICENSE)
[![Python version](https://img.shields.io/badge/python-3.10>=-blue)](https://www.python.org/)

This is a playground repository for experimenting and learning about the
[retrieval augmented generation (RAG)](https://aws.amazon.com/what-is/retrieval-augmented-generation/) paradigm.

Overview of a simple RAG pipeline:

<img src="data/static/RAG.svg" alt="Overview" width="100%"/ align="center">

## Poetry

### Installation

```
pipx install poetry # or uv tool install poetry
```

### Creating the Environment

```bash
poetry install
```

## Notebooks

| Index | Notebook                                                                                    | Description                                                  |
|-------|---------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| 1     | [embedding_and_indexing_documents](notebooks/basics/embedding_and_indexing_documents.ipynb) | This notebook demonstrates how to embed and index documents. |

## List of Important Papers

| Index | Title                                                                           | Authors      | Year | Link                                      |
|-------|---------------------------------------------------------------------------------|--------------|------|-------------------------------------------|
| 1     | Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks                | Lewis et al. | 2020 | [arXiv](https://arxiv.org/abs/2005.11401) |
| 2     | Retrieval-Augmented Generation for Large Language Models: A Survey              | Gao et al.   | 2023 | [arXiv](https://arxiv.org/abs/2312.10997) |
| 3     | A Survey on RAG Meeting LLMs: Towards Retrieval-Augmented Large Language Models | Fan et al.   | 2024 | [arXiv](https://arxiv.org/abs/2405.06211) |

## License

Most files in this repository are licensed under the MIT License---see the [LICENSE](LICENSE) file for details.
