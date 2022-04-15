# make_vegetable_driver

## This Project is Now Dormant!

It has been superseded by the new project [cart](https://gitlab.com/everythingfunctional/cart).

Tool for creating the driver program for a [vegetables] test suite.

## Downloading and installing

Build and install with the Fortran Package Manager ([fpm]):

```
git clone https://gitlab.com/everythingfunctional/make_vegetable_driver
cd make_vegetable_driver
fpm install
```

## Using

Make a vegetable driver as follows:

```
make_vegetable_driver [--setup_module "setup_m" --setup_procedure "setup" --teardown_module "teardown_m" --teardown_procedure "teardown"] driver_name test_file [more [test [files [...]]]]
```

It is expected that each `test_file` contains a single module with a name ending with `_test`,
and that the name of the file is the same as the module name, with `.f90` appended.
This module is expected to contain at least 1 public function with names starting with `test_`.
Thus the most common usage is a command like:

```
make_vegetable_driver test/main.f90 test/*_test.f90
```

If you have code that needs to be executed before and/or after the entire test suite,
then place it in subroutines that take no arguments,
and provide the names of the procedures and modules they are in as the optional arguments.

[vegetables]: https://gitlab.com/everythingfunctional/vegetables
[fpm]: https://github.com/fortran-lang/fpm
