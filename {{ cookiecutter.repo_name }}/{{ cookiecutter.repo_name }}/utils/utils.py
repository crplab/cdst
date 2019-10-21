import hashlib
import sys


def file_hash(filepath):
    """
    returns a hash of a file
    """
    hash_md5 = hashlib.md5()
    with open(filepath, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()


def str_hash(inp_str):
    """
    returns a hash of a string
    """
    hash_md5 = hashlib.md5()
    hash_md5.update(inp_str.encode())
    return hash_md5.hexdigest()


def check_args_num(n_args, strict=True):
    """
    checks the number of args passed to script and returns them as tuple

    remember that first arg is always a script name
    """
    if (strict and len(sys.argv) != n_args) or (
        (not strict) and len(sys.argv) < n_args
    ):
        raise SystemExit("Arguments error. Required {} args".format(n_args - 1))
    return sys.argv


def set_random_seed(seed):
    raise NotImplementedError


def read_config(config_file):
    raise NotImplementedError
