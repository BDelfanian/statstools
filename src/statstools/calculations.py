import numpy as np

def descriptive_stats(numbers: list) -> dict:
    """
    Calculate descriptive statistics for a list of numbers.

    Args:
        numbers (list): A list of numerical values.

    Returns:
        dict: A dictionary containing:
            - 'mean': Mean of the numbers.
            - 'std': Standard deviation of the numbers.
    """
    arr = np.array(numbers)
    return {
        "mean": float(np.mean(arr)),
        "std": float(np.std(arr))
    }
