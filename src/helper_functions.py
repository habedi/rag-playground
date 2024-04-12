import json

import pandas as pd


def load_data(data_dir, ext='txt'):
    """
    Load data from a directory and return a pandas DataFrame.

    Parameters:
    data_dir (Path): The directory where the data files are stored.
    ext (str): The file extension of the data files. Default is 'txt'.

    Returns:
    DataFrame: A pandas DataFrame where each row represents a document. The DataFrame has two columns: 'id' and 'text'.
    """
    documents = []
    documents_ids = []
    for file_path in data_dir.glob(f'*.{ext}'):
        with open(file_path, 'r') as file:
            documents.append(file.read())
            documents_ids.append(file_path.stem)
    return pd.DataFrame({
        'id': documents_ids,
        'text': documents,
    })


def get_openai_api_key(file_path):
    """
    Load the OpenAI API key from a JSON file.

    Parameters:
    file_path (str): The path to the JSON file containing the OpenAI API key.

    Returns:
    str: The OpenAI API key.
    """
    with open(file_path, 'r') as file:
        return json.load(file)['secret_key']


def embed_documents(documents, openai_client, embedding_model):
    """
    Embed a list of documents using a specified model from the OpenAI API.

    Parameters:
    documents (list): A list of documents to be embedded.
    openai_client (OpenAIAPI): An instance of the OpenAI API client.
    embedding_model (str): The name of the model to use for embedding.

    Returns:
    list: A list of embeddings, one for each document.
    """
    return openai_client.embeddings.create(input=documents, model=embedding_model)
