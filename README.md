
# cpp-data-structures

A C++ data structures library.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
  - [Headers](#headers)
- [Dependencies](#dependencies)
- [Build](#build)
  - [Library](#library)
  - [Tests](#tests)
- [Installation](#installation)
  - [Windows](#windows)
    - [Static release version](#static-release-version)
    - [Static debug version](#static-debug-version)
- [Directory structure](#directory-structure)
- [Contribute](#contribute)
- [License](#license)

## Introduction

This repository holds the source code, documentation and tests for the `C++` data structure library `cpp-data-structures`.

## Features

- Header-only library
- Can be installed or used as a submodule in your project
- Tree data structure implementation using a `Node` class.

## Usage

The library consists of a `tree` package.

### CMake Integration

This library can easily be integrated into a CMake project. 
Either install it as described [here](#Installation) or directly include it in your project
using `git submodule` for example.

#### Using installation of cpp-data-structures

Get access to the library using `find_package()`.
You can then link to the `cpp-data-structures` target using namespace `CPP_DATA_STRUCTURES::`.

In `target_link_libraries`, replace `<PUBLIC|PRIVATE|INTERFACE>` with the appropriate keyword.
Replace `<target-name>` with the name of your target that uses the library.

```cmake
# Search installation of cpp-data-structures
find_package(cpp-data-structures REQUIRED CONFIG)

# and link to it
target_link_libraries(<target-name>
    <PUBLIC|PRIVATE|INTERFACE>
        # Imported target uses namespace
        CPP_DATA_STRUCTURES::cpp-data-structures
)
```

#### Using cpp-data-structures as submodule

Add the repository as a submodule to your project and include the library in your `CMakeLists.txt` using `add_subdirectory()`.
Just link to the library target `cpp-data-structures` directly. 
It will be available locally without a namespace.

> To use the repository as a submodule, I recommend integrating it into your project using `git submodule` or similar. Another option is to copy the contents and manage it in the consuming repository.

In `target_link_libraries`, replace `<PUBLIC|PRIVATE|INTERFACE>` with the appropriate keyword.
Replace `<target-name>` with the name of your target that uses the library.
```cmake
# Add the cpp-data-structures submodule locally
add_subdirectory(cpp-data-structures)

# We expect cpp-data-structures to be available locally without a namespace
target_link_libraries(<target-name>
    INTERFACE
        cpp-data-structures
)
```

### Headers

The library provides the following headers.

```cpp
// Header for a node object inside a tree data structure
#include <cpp-data-structures/tree/Node.hpp>
```

## Dependencies

- <em>C++23</em>.

## Build

### Library

The library itself is header-only, so it cannot be built on its own. 

A standalone build can be performed by enabling the unit test flag.

### Tests

Set the `BUILD_UNIT_TESTS` option to build unit tests.

```shell
cd cpp-data-structures
mkdir -p build/release
cd build/release
cmake -DBUILD_UNIT_TESTS=ON ../..
cmake --build .
```

Run the tests using `ctest`
```shell
# make
make test

# ninja
ctest
```

Unit test names are preceded by `UT` in the result view.

## Installation

> Installation is not required. You can also include the library as a (e.g. `git`) submodule.

If you want to install the library, follow these steps:

The library is header-only. Hence installation comes down to copying the public headers to a location where they can be included in your projects.

### Windows

Install instructions using `powershell`.
Use `-DCMAKE_INSTALL_PREFIX` only if you do not want to install to the default location.

```powershell
Set-Location -path cpp-data-structures
New-Item -name build\release -ItemType Directory -Force
Set-Location build\release
cmake ..\.. -DCMAKE_INSTALL_PREFIX=<absolute-path-to-installation-dir>
cmake --build . --config Release
```
Installation may require admin privileges depending on install location. If so, use an <em>administrator</em> `powershell` or `cmd` for the install command.

```powershell
cmake --build . --target install --config Release
```

<a id="directory-structure"></a>
## Directory structure

<pre>
(root)
+- examples                 # Examples using cpp-data-structures
|   +- <em>example1</em>
|       +- CMakeLists.txt
|       +- *.cpp
+- cpp-data-structures      # C++ data structures library source code
|   +- doc
|       +- *.puml           # UML diagram 
|   +- CMakeLists.txt
|   +- *.cpp
|   +- *.hpp
|   +- <em>component1</em>                       # C++ data structures library component sub directory
|       +- doc
|           +- *.puml                   # UML diagram
|       +- CMakeLists.txt
|       +- *.cpp                        # Library source file
|       +- *.hpp                        # Library header file
|       +- *.tpp                        # Library template implementation file
|       +- *.test.cpp                   # Unit tests source file
|       +- *.test.hpp                   # Unit test header file
|   +- <em>component2</em>                       # C++ data structures library component sub directory
|       +- doc
|           +- *.puml                   
|       +- CMakeLists.txt
|       +- *.cpp
|       +- *.hpp
|       +- *.test.cpp
|       +- *.test.hpp
+- CMakeLists.txt
</pre>

## Contribute

Check the following things when contributing to this library:

- [ ] UML diagrams affected by change and updated if necessary?
- [ ] Unit tests added? Unit tests executed (called in the corresponding unit test main() function)? 
- [ ] Unit tests run successfully?
- [ ] Is the public API of the library affected by the change?

## License

This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE](LICENSE) file for details.