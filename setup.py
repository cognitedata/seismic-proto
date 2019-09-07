import re

from setuptools import find_packages, setup

version = re.search('^__version__\s*=\s*"(.*)"', open("cognite/seismic/protos/__init__.py").read(), re.M).group(1)

setup(
    name="cognite-seismic-protos",
    version=version,
    description="Protobuf generated classes",
    packages=["cognite." + p for p in find_packages(where="cognite")],
    python_requires=">=3.6",
    license="Apache",
    author="Vegard Stikbakke",
    author_email="vegard.stikbakke@cognite.com",
)
