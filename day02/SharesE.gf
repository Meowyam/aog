concrete SharesE of Shares = open Prelude in {
  lincat
    Comment = SS;
    Item = SS;
    Number = SS;
    Kind = LinKind;
    Quality = LinQuality;
    Equals = LinEquals;
    Sum = SS;
    What = SS;
    SumItem = SS;
  lin
    Pred item num = {
      s = item.s ++ "is" ++ num.s;
    };
    SumPred eq a b = {
      s = a.s ++ eq.s ++ b.s;
    };
    -- SimpleSumPred eq a = {
    --   s = eq.s ++ a.s;
    -- };
    -- MultiSum eq a b sum c = {
    --   s = a.s ++ eq.s ++ b.s ++ sum.s ++ c.s;
    -- };
    Mod q = {
      s = q.s;
    };
    NumberedKind w k = {
      s = w.s ++ k.s;
    };
    UnnumberedKind k = {
      s = k.s;
    };
    -- UnSharedKind k = {
    --   s = k.s;
    -- };
    NumberItem n = {
      s = n.s;
    };
    Shares t = {
      s = t.s ++ "shares";
    };
    MultiSumOf sum a eq b = {
      s = a.s ++ sum.s ++ eq.s ++ b.s;
    };
    SumOf sum a b = {
      s = a.s ++ sum.s ++ b.s;
    };
    DoubleNum n t = {
      s = n.s ++ t.s ;
    };
    -- Shares = mkKind "shares";
    Old = mkQuality "original";
    New = mkQuality "new";

    Class string = {
      s = "Class" ++ string.s;
    };
    IsSum = mkEquals "is the sum of";
    SummOf = mkEquals "the sum of";
    Is = mkEquals "is";
    Given = mkEquals "shall be given by the sum of";
    Comma a b = {s = a.s ++ "," ++ b.s};
    And = {s = "and"};
    Plus = {s = "plus"};
    Multiply = {s = "multiplied by"};
    WithThe q = {s = "the" ++ q.s};
    Numberof = {s = "the number of"};

    Thousand = {s = "1000"};
    Hundred = {s = "hundred"};
    Two = {s = "two"};
    Three = {s = "three"};
    Four = {s = "four"};
    Five = {s = "five"};
    Six = {s = "six"};
    Ten = {s = "ten"};
    Twelve = {s = "twelve"};
    Twenty = {s = "twenty"};
    Ninety = {s = "ninety"};
  oper
    LinKind : Type = {s: Str};
    mkKind : Str -> LinKind;
    mkKind str = {s = str;};
    LinQuality: Type = {s: Str};
    mkQuality : Str -> LinQuality;
    mkQuality str = {s = str};
    LinEquals : Type = {s: Str};
    mkEquals : Str -> LinEquals;
    mkEquals str = {s = str;};
};