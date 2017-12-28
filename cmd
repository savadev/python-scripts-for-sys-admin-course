#!/bin/python

import subprocess

## command call scenario
# code = subprocess.call(['ls', '-z']) # command fail scenario, as flag z doesn't exist
#code = subprocess.call(['ls', '-l']) # success scenario
## capturing the error code
#if code == 0:
#    print('Command finished successfully')
#else:
#    print("failed with code: %i" % code)

## capture and print ouput of command
#output = subprocess.check_output(['ls', '-l'])
#print(output)

            #['ls', 'fake.txt'],
try:
    output = subprocess.check_output(
            "ls fake.txt",
            stderr=subprocess.STDOUT
            )
except OSError as err:
    print("caught OSError")
    output = err
except subprocess.CalledProcessError as err:
    print("Caught CalledProcessError")
    output = err

print(output)
