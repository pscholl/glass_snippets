.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 517
    #getter for: Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 518
    #getter for: Lcom/google/common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 519
    #getter for: Lcom/google/common/base/Splitter;->limit:I
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 520
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 521
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 531
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 532
    .local v1, nextStart:I
    :cond_0
    :goto_0
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v4, v7, :cond_8

    .line 533
    move v3, v1

    .line 536
    .local v3, start:I
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v4}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v2

    .line 537
    .local v2, separatorPosition:I
    if-ne v2, v7, :cond_1

    .line 538
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 539
    .local v0, end:I
    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 544
    :goto_1
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v4, v1, :cond_2

    .line 552
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 553
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 554
    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    .line 541
    .end local v0           #end:I
    :cond_1
    move v0, v2

    .line 542
    .restart local v0       #end:I
    invoke-virtual {p0, v2}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v4

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    .line 559
    :cond_2
    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 562
    :cond_3
    :goto_3
    if-le v0, v3, :cond_4

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 563
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 566
    :cond_4
    iget-boolean v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v4, :cond_5

    if-ne v3, v0, :cond_5

    .line 568
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 569
    goto :goto_0

    .line 572
    :cond_5
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 576
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 577
    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 579
    :goto_4
    if-le v0, v3, :cond_7

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 580
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 583
    :cond_6
    iget v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 586
    :cond_7
    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    .end local v0           #end:I
    .end local v2           #separatorPosition:I
    .end local v3           #start:I
    :goto_5
    return-object v4

    :cond_8
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_5
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
