if1thriftme
===========

if1thriftme package contains Python wrappers of an object-oriented API to some generic native microservices (C++).
The provided modules were generated with SWIG (http://www.swig.org/Doc1.3/Python.html) and
extended/customized in order to make them simple to use by dev teams.

Usage example:

.. code-block:: python

    from if1thriftme.VehicleWarningsService import AcousticOutputServiceClient, SoundID, VolumeCtlID, PrioOverrideType, RepetitionMode

    acoustic = AcousticOutputServiceClient.createClient("tcp://192.168.0.10:19102/#43")
    print "Client type " + str(type(acoustic))

    print "Wait for connection... error " + str(acoustic.waitForConnection())

    print "Client valid " + str(acoustic.verifyClient())

    print "playSound = " + str(acoustic.playSound(SoundID.WARNING_LONG, VolumeCtlID.HIGH_VOLUME, PrioOverrideType.NO_DELAY, RepetitionMode.ACTIVE, 5, 0))

