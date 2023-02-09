abstract Shares = {
  flags startcat = Comment;

  cat
    Comment;
    Item;
    Kind;
    What;
    Quality;
    Equals;
    Sum;
    SumItem;
    Number;
    Symbol;

  fun
    Pred : Item -> Number -> Comment;
    SumPred : Equals -> Item -> SumItem -> Comment;
    DoublePred : Sum -> Comment -> SumItem -> Comment;
    SumNumPhrase : Equals -> Number -> Sum -> Number -> Sum -> Number -> Comment;
    MultiComment : Comment -> Comment -> Comment;


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
    NoEquals : SumItem -> Sum -> Number -> SumItem;
    SumOf : Sum -> Item -> Item -> SumItem;
    Comma : Item -> SumItem -> SumItem;

    Thousand, Hundred, Two, Three, Four, Five, Six, Ten, Twelve, Twenty, Ninety: Number;

    Percent: Symbol;

    IntNum : Int -> Number;
    IntPerc: Symbol -> Number -> Number;

    Greater, Lesser, SummOf, IsSum, Given, GivenSum, Is: Equals;
    CommAnd, And, Plus, Multiply, Less: Sum;
    CompoundAnd: Sum -> Equals -> Equals;
    Numberof, Valueof : What;

}

--

---   the number of Class L shares is the sum of the number of Class K, Class G, and Class H shares
