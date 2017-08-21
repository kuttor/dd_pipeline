#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
dd_pipeline - main.py
  dd_pipeline
  dd_pipeline [ -h | --help ]
  dd_pipeline [ -v | --version ]

Options:
  -v --version            Show version
  -h --help               Show this screen
"""

# ===========================================================================
# Credits
# ===========================================================================

__author__     = 'Andrew Kuttor'
__maintainer__ = 'Andrew Kuttor'
__github__     = 'www.github.com/kuttor'
__email__      = 'andrew.kuttor@dimensiondata.com'
__version__    = '0.0.1'

# ===========================================================================
# Imports
# ===========================================================================

from docker import from_env as env
# import docopt
# import threading

# ===========================================================================
# Functions
# ===========================================================================

def docker_client(poweron=True):
    """Creates Connections to Docker-Engine."""
    if poweron:
        client = env()
        return client

# ===========================================================================
# Main
# ===========================================================================

def main():
    """The Main Event"""
    docker_client(poweron=True)

if __name__ == "__main__":
    main()
