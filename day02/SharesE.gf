concrete SharesE of Shares = open Prelude in {
  lincat
    Comment = SS;
    Item = SS;
    Number = SS;
    Kind = LinKind;
    Quality = LinQuality;
    Equals = LinEquals;
    Sum = SS;
  lin
    Pred item num = {
      s = item.s ++ "is" ++ num.s;
    };
    SumPred eq a b = {
      s = a.s ++ eq.s ++ b.s;
    };
    Mod q = {
      s = q.s;
    };
    NumberedKind k = {
      s = "the number of" ++ k.s ++ "shares";
    };
    UnnumberedKind k = {
      s = k.s ++ "shares";
    };
    SumOf sum a b = {
      s = a.s ++ sum.s ++ b.s;
    };
    -- Shares = mkKind "shares";
    Old = mkQuality "original";
    New = mkQuality "new";
    Thousand = {s = "1000"};
    Hundred = {s = "two hundred"};
    Class string = {
      s = "Class" ++ string.s;
    };
    IsSum = mkEquals "is the sum of";
    Given = mkEquals "shall be given by the sum of";
    Comma a b = {s = a.s ++ "," ++ b.s};
    And = {s = "and"};
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