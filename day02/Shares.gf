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

-- the value of the Class L shares shall be given by the lesser of the conversion price multiplied by the number of Class L shares -> comment
-- and / the purchase price multiplied by the number of new shares
-- sum / (SumOf Multiply (UnnumberedKind (Mod (WithThe (PriceClass "purchase")))) (NumberedKind Numberof (Shares (Mod New))))
-- less twenty percent
-- sum -> Number

    DoublePred : Sum -> Comment -> SumItem -> Comment;


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

    Thousand, Hundred, Two, Three, Four, Five, Six, Ten, Twelve, Twenty, Ninety, Percent: Number;

    IntNum : Int -> Number;
    IntPerc: Number;

    Greater, Lesser, SummOf, IsSum, Given, GivenSum, Is: Equals;
    CommAnd, And, Plus, Multiply, Less: Sum;
    Numberof, Valueof : What;

}

--

---   the number of Class L shares is the sum of the number of Class K, Class G, and Class H shares
