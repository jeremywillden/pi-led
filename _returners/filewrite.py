def returner(ret):
    """
    Write the output of the Salt command to a file on the Minion itself.
    """
    try:
        f = open("/root/last-salt-result.txt", "w+") # use "a+" to append instead
        f.write( str(ret) )
        f.close
    except:
        pass

returner({"result":"filewrite.py was called without a ret input"})
