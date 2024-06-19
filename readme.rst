===============
SAVESCUM
===============

A game about saving and loading states.

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
*       | ``prof``. Profile and print results into the console.
        |
*       | ``jprof``. Profile and output the JSON profiling data into prof.json
        | (NOTE: Use a flamegraph visualizer, I recommend https://gravitymoth.com/spall/)
*       | ``testall``. Launches all tests. [testing]_
        | Example: ``./L testall ``
*       | ``check``. Checks if tests and game compile. Empty output is success.
        | Example: ``./L check``


Testing
=======

Testing tooling is provided. 

Tests are located in ``test/`` directory, which contains folders with runnable tophat projects.
The test will run in the root directory of the project.

Run test
--------


| Format: ``./L [unit|testbed] test <test_name>``. [launching]_

| Execute ``./L test <test_name>``. [launching]_
| Where ``<test_name>`` is a name of folder located in ``test/``.
| The test will run in the root directory of the project.
| The modules are loaded relative to the directory of the test.

| To execute unit test or testbed test specifically, use ``unit`` or ``testbed``
| as specified in the format

Create test
-----------

| Create a folder within ``test/`` directory.
| Create a ``main.um`` in the folder you just made.
| Write code.

Loading Prefix
--------------

| ``TEST_PFX`` variable will be set to location relative to the root directory of the project.
| Make use of ``src/d_test.um`` to acquire a file loading prefix.
| Example: ``image.load(d_test.pfx()+"cute_rabbit.png")``, where ``"cute_rabbit.png"`` is relative to the directory of the test.


Coding Style
============

Follow standard umka coding style:

*     | module_name
*     | functionName
*     | varName
*     | constName
*     | enumConstName
*     | TypeName

Use 2 spaces everywhere for indentation, except Makefiles.

For more information, refer to ``.editorconfig``, make sure to follow the rules.

Conventions
===========

Exit codes of the program within SAVESCUM code must be any of these:
- 134 - Assertion/Programmer error
- 551 - Test error
- 552 - Script error
