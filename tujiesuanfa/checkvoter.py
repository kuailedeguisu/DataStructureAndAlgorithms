voted = {}


def checkvoter(name):
    if voted.get(name):
        print "Kick it out"
    else:
        voted[name] = True
        print "Let me vote"


checkvoter("Tom")
checkvoter("Sam")
checkvoter("Lucy")
checkvoter("Tom")
print voted
