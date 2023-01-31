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
    elif (numOf=="NumberItem"):
      return (args[1],args[2])
    else:
      pass
  elif constructor=="MultiSum":
    for a in args:
      print(a)
  else:
      print("some other thing")
      print(tree)

def getWhich(tree,eng):
  constructor,args = tree.unpack()
  if (constructor=="NumberedKind"):
    shares = args[1]
    return((getName(shares,eng)))
  elif (constructor=="UnnumberedKind"):
    var1 = args[0]
    name = getName(var1,eng)
    return((name))
  elif (constructor=="NumberItem"):
    x,_ = args[0].unpack()
    print(engNums[x])
    return(engNums[x])
  else:
    pass

def getSum(tree,eng):
  constructor,args = tree.unpack()
  whichAdd,_ = args[0].unpack()
  var1,_ = args[1].unpack()
  var2,_ = args[2].unpack()
  if (var1 == "NumberItem"):
    print(var1,var2)
    result = addNum(args[1],args[2],whichAdd,eng)
  else:
    result = add(args[1],args[2],eng)
  return(result)

def getComma(tree,eng):
  constructor,args = tree.unpack()
  var0,_ = args[0].unpack()
  var1,_ = args[1].unpack()
  cons,ars = args[0].unpack()
  if (var0 == "NumberedKind") and (var1 == "SumOf"):
    num = (numberShares[getName(ars[1],eng)])
    summ = getNumber(args[1],eng)
    return(num + summ)
  elif (var0 == "UnnumberedKind") and (var1 == "SumOf"):
    num = (numberShares[getName(ars[0],eng)])
    summ = getNumber(args[1],eng)
    return(num + summ)
  else:
    pass

def add(tree1,tree2,eng):
  ls = ([getWhich(tree1,eng),getWhich(tree2,eng)])
  vals = [numberShares[x] for x in ls]
  return (sum(vals))

def addNum(tree1,tree2,whichAdd,eng):
  ls = ([getWhich(tree1,eng),getWhich(tree2,eng)])
  if (whichAdd == "Plus"):
    return(sum(ls))
  elif (whichAdd == "Multiply"):
    mult = 1
    for x in ls:
      mult = mult * x
    return(mult)

def getName(tree,eng):
  constructor,args = tree.unpack()
  mod,ignore = args[0].unpack()
  theOrNo = eng.linearize(args[0])
  ls = theOrNo.split()
  if (len(ls) > 1) and (ls[0] == "the"):
    del ls[0]
    return(' '.join(ls))
  else:
    return(theOrNo)

def getNumber(tree,eng):
  constructor,args = tree.unpack()
  if constructor in engNums:
    val = engNums[constructor]
    return(val)
  elif constructor == "DoubleNum":
    return(doubleNum(args))
  elif constructor == "SumOf":
    sum = getSum(tree,eng)
    return(sum)
  elif constructor == "Comma":
    return(getComma(tree,eng))
  else:
    pass

def doubleNum(arg):
  x,_ = arg[0].unpack()
  y,_ = arg[1].unpack()
  if (x in engNums) and (y in engNums):
    return(engNums[x] * engNums[y])
  else:
    print("number error:",x,y)

engNums = {
  "Thousand" : 1000,
  "Hundred" : 100,
  "Two" : 2,
  "Four" : 4,
  "Five" : 5,
  "Six" : 6,
  "Ten" : 10,
  "Twelve" : 12,
  "Twenty" : 20,
  "Ninety" : 90
}

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

if __name__ == '__main__':
    gr = pgf.readPGF("Shares.pgf")
    eng = gr.languages["SharesE"]
    f = open("full.txt", "r")
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
