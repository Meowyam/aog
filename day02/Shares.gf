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

    Mod : Quality -> Kind;

    Old,New : Quality;
    WithThe : Quality -> Quality;
    Class : String -> Quality ;

    SumOf : Sum -> Item -> Item -> SumItem;
    Comma: Item -> SumItem -> SumItem;

    Thousand, Hundred : Number;
    IsSum, Given: Equals;
    And: Sum;
    Numberof : What;

}

--

---   the number of Class L shares is the sum of the number of Class K, Class G, and Class H shares
