abstract Shares = {
  flags startcat = Comment;

  cat
    Comment;
    Item;
    Kind;
    What;
    Quality;
    Number;
    Equals;
    Sum;
    SumItem;

  fun
    Pred : Item -> Number -> Comment;
    SumPred : Equals -> Item -> SumItem -> Comment;

    NumberedKind : What -> Kind -> Item;
    UnnumberedKind : Kind -> Item;
    -- UnSharedKind : Kind -> Item;
    Shares: Kind -> Kind;
    NumberItem : Number -> Item;
    DoubleNum : Number -> Number -> Number;

    Mod : Quality -> Kind;

    Old,New : Quality;
    WithThe : Quality -> Quality;
    Class : String -> Quality ;
    Alpha,Beta,Delta,Gamma : Quality ;
    PriceClass : String -> Quality ;

    MultiSumOf : Sum -> Item -> Equals -> SumItem -> SumItem;
    SumOf : Sum -> Item -> Item -> SumItem;
    Comma : Item -> SumItem -> SumItem;

    Thousand, Hundred, Two, Three, Four, Five, Six, Ten, Twelve, Twenty, Ninety, Percent: Number;

    Greater, Lesser, SummOf, IsSum, Given, GivenSum, Is: Equals;
    And, Plus, Multiply, Less: Sum;
    Numberof, Valueof : What;

}

--

---   the number of Class L shares is the sum of the number of Class K, Class G, and Class H shares
