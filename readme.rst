===============
Tophat Doukutsu
===============

This is an example platforming engine which uses tophat

Launching
=========

Root directory launcher application. 
To be able to launch, install POSIX shell (sh, bash...)


Usage ``./L <command> ...args``

``<command>:``

*       | ``play``. Launches the game normally. 
        | Example: ``./L play``
*       | ``test``. Launches a test. [testing]_
        | Example: ``./L test launcher``
*       | ``check``. Checks if tests and game compile. Empty output is success.
        | Example: ``./L check``


Testing
=======

Testing tooling is provided. 

Tests are located in ``test/`` directory, which contains folders with runnable tophat projects.
The test will run in the root directory of the project.

Run test
--------

| Execute ``./L test <test_name>``. [launching]_
| Where ``<test_name>`` is a name of folder located in ``test/``.
| The test will run in the root directory of the project.
| The modules are loaded relative to the directory of the test.

Create test
-----------

| Create a folder within ``test/`` directory.
| Create a ``main.um`` in the folder you just made.
| Write code.

Loading Prefix
--------------

| ``TEST_PFX`` variable will be set to location relative to the root directory of the project.
| Make use of ``tophat.dat/d_pfx.um`` to acquire a file loading prefix.
| Example: ``image.load(d_pfx.pfx()+"cute_rabbit.png")``, where ``"cute_rabbit.png"`` is relative to the directory of the test.
