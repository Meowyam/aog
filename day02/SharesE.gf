concrete SharesE of Shares = open Prelude in {
  lincat
    Comment = SS;
    Item = SS;
    Number = {s : Str};
    Kind = LinKind;
    Quality = LinQuality;
    Equals = LinEquals;
    Sum = SS;
    What = SS;
    SumItem = SS;
    Symbol = SS;
  lin
    Pred item num = {
      s = item.s ++ "is" ++ num.s;
    };
    SumPred eq a b = {
      s = a.s ++ eq.s ++ b.s;
    };
    DoublePred sum a b = {
      s = a.s ++ sum.s ++ b.s;
    };
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
    NoEquals a sum n = {
      s = a.s ++ sum.s ++ n.s;
    };
    SumOf sum a b = {
      s = a.s ++ sum.s ++ b.s;
    };
    DoubleNum n t = {
      s = n.s ++ t.s ;
    };
    MultiComment c1 c2 = {
      s = c1.s ++ c2.s;
    };
    -- Shares = mkKind "shares";
    Old = mkQuality "original";
    New = mkQuality "new";

    Class string = {
      s = "Class" ++ string.s;
    };
    PriceClass string = {
      s = string.s ++ "price";
    };
    Alpha = mkQuality "Alpha";
    Beta = mkQuality "Beta";
    Delta = mkQuality "Delta";
    Gamma = mkQuality "Gamma";
    IsSum = mkEquals "is the sum of";
    SummOf = mkEquals "the sum of";
    Is = mkEquals "is";
    Given = mkEquals "shall be given by";
    GivenSum = mkEquals "shall be given by the sum of";
    Lesser = mkEquals "shall be given by the lesser of";
    Greater = mkEquals "shall be given by the greater of";
    Comma a b = {s = a.s ++ "," ++ b.s};
    And = {s = "and"};
    CommAnd = {s = ", and"};
    Plus = {s = "plus"};
    Multiply = {s = "multiplied by"};
    Less = {s = "less"};
    WithThe q = {s = "the" ++ q.s};
    Numberof = {s = "the number of"};
    Valueof = {s = "the value of"};

    CompoundAnd sum eq = {s = sum.s ++ eq.s};
    SumNumPhrase eq n1 sum n2 sum2 n3 = {s = eq.s ++ n1.s ++ sum.s ++ n2.s ++ sum2.s ++ n3.s};

    Thousand = {s = "1000" | "thousand"};
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
    Percent = {s = "percent" | "%"};
    IntPerc symb num = {s = num.s ++ symb.s};
    IntNum int = {
      s = int.s;
    };
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