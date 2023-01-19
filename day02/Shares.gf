abstract Shares = {
  flags startcat = Comment;

  cat
    Comment;
    Item;
    Kind;
    Quality;
    Number;
    Equals;
    Sum;
    SumItem;

  fun
    Pred : Item -> Number -> Comment;
    SumPred : Equals -> Item -> SumItem -> Comment;
    NumberedKind : Kind -> Item;
    UnnumberedKind : Kind -> Item;
    -- Shares: Kind;
    Mod : Quality -> Kind;
    Old,New : Quality;
    Class : String -> Quality ;
    SumOf : Sum -> Item -> Item -> SumItem;
    Thousand, Hundred : Number;
    IsSum, Given: Equals;
    And: Sum;
    Comma: Item -> SumItem -> SumItem;
}