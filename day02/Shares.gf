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

-- twenty is four multiplied by the sum of two and three
-- four multiplied by the sum of two and three

    MultiSumOf : Sum -> Item -> Equals -> SumItem -> SumItem;
    SumOf : Sum -> Item -> Item -> SumItem;
    Comma : Item -> SumItem -> SumItem;

    Thousand, Hundred, Two, Three, Four, Five, Six, Ten, Twelve, Twenty, Ninety: Number;

    SummOf, IsSum, Given, Is: Equals;
    And, Plus, Multiply: Sum;
    Numberof : What;

}

--

---   the number of Class L shares is the sum of the number of Class K, Class G, and Class H shares
