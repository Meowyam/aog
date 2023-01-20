import pgf

numberShares = {}

def parseAndValidate(tree):
  constructor,args = tree.unpack()
  if constructor=="Pred":
    numOf,_ = args[0].unpack()
    if numOf=="NumberedKind":
      return (args[0],args[1])
    else:
      print("no")
  elif constructor=="SumPred":
    numOf,_ = args[1].unpack()
    sumOf,_ = args[2].unpack()
    if (numOf=="NumberedKind") or (numOf=="UnnumberedKind"):
      return (args[1],args[2])
  else:
      print("some other thing")
      print(tree)

def getWhich(tree,eng):
  constructor,args = tree.unpack()
  if constructor=="NumberedKind":
    shares = args[1]
    getName(shares,eng)
    return(getName(shares,eng))
  else:
    pass

def getSum(tree,eng):
  constructor,args = tree.unpack()
  var1,_ = args[1].unpack()
  var2,_ = args[2].unpack()
  result = add(args[1],args[2],eng)
  return(result)


def add(tree1,tree2,eng):
  ls = ([getWhich(tree1,eng),getWhich(tree2,eng)])
  vals = [numberShares[x] for x in ls]
  return (sum(vals))

def getName(tree,eng):
  constructor,args = tree.unpack()
  mod,ignore = args[0].unpack()
  # print(eng.linearize(args[0]))
  # print(mod)
  return(eng.linearize(args[0]))

def getNumber(tree,eng):
  constructor,args = tree.unpack()
  print(constructor)
  if constructor == "Thousand":
    return 1000
  elif constructor == "Hundred":
    return 200
  elif constructor == "SumOf":
    sum = getSum(tree,eng)
    return sum
  else:
    pass

def interpret(tree,eng):
    numOf,number = parseAndValidate(tree)
    sharesVariable = getWhich(numOf,eng)    # :: String
    sharesValue = getNumber(number,eng) # :: Int
    numberShares[sharesVariable] = sharesValue


def readEachShare(x):
    print(x)
    if (eng.parse(x)):
      ogSharesIter = eng.parse(x)
      p,ogShares = ogSharesIter.__next__()
      return(ogShares)
    else:
      print("error")
      print(x)

if __name__ == '__main__':
    gr = pgf.readPGF("Shares.pgf")
    eng = gr.languages["SharesE"]
    f = open("input.txt", "r")
    all = list(filter(None, f.read().splitlines()))
    # print(all)

    # x="the number of Class A shares shall be given by the sum of the number of original shares and the number of new shares"

    # ogSharesIter = eng.parse(x)
    # p,ogShares = ogSharesIter.__next__()

    [interpret(t,eng) for t in (map(readEachShare, all))]

    print("---")
    # print(ogShares)
    # print(newShares)
    print(numberShares)
