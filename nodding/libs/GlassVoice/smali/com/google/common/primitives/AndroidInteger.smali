.class final Lcom/google/common/primitives/AndroidInteger;
.super Ljava/lang/Object;
.source "AndroidInteger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "string"
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 34
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 12
    .parameter "string"
    .parameter "radix"
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v11, 0x24

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    if-lt p1, v10, :cond_0

    move v3, v4

    :goto_0
    const-string v7, "Invalid radix %s, min radix is %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    if-gt p1, v11, :cond_1

    move v3, v4

    :goto_1
    const-string v7, "Invalid radix %s, max radix is %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 48
    .local v0, i:I
    if-nez v1, :cond_2

    move-object v3, v6

    .line 55
    :goto_2
    return-object v3

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    move v3, v5

    .line 43
    goto :goto_0

    :cond_1
    move v3, v5

    .line 45
    goto :goto_1

    .line 51
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-ne v3, v7, :cond_3

    move v2, v4

    .line 52
    .local v2, negative:Z
    :goto_3
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4

    move-object v3, v6

    .line 53
    goto :goto_2

    .end local v2           #negative:Z
    :cond_3
    move v2, v5

    .line 51
    goto :goto_3

    .line 55
    .restart local v2       #negative:Z
    :cond_4
    invoke-static {p0, v0, p1, v2}, Lcom/google/common/primitives/AndroidInteger;->tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2
.end method

.method private static tryParse(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .locals 9
    .parameter "string"
    .parameter "offset"
    .parameter "radix"
    .parameter "negative"
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    const/high16 v8, -0x8000

    const/4 v6, 0x0

    .line 60
    div-int v2, v8, p2

    .line 61
    .local v2, max:I
    const/4 v5, 0x0

    .local v5, result:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    move v4, p1

    .line 62
    .end local p1
    .local v4, offset:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 63
    add-int/lit8 p1, v4, 0x1

    .end local v4           #offset:I
    .restart local p1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 64
    .local v0, digit:I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 86
    .end local v0           #digit:I
    :cond_0
    :goto_1
    return-object v6

    .line 67
    .restart local v0       #digit:I
    :cond_1
    if-gt v2, v5, :cond_0

    .line 70
    mul-int v7, v5, p2

    sub-int v3, v7, v0

    .line 71
    .local v3, next:I
    if-gt v3, v5, :cond_0

    .line 74
    move v5, v3

    move v4, p1

    .line 75
    .end local p1
    .restart local v4       #offset:I
    goto :goto_0

    .line 76
    .end local v0           #digit:I
    .end local v3           #next:I
    :cond_2
    if-nez p3, :cond_3

    .line 77
    neg-int v5, v5

    .line 78
    if-gez v5, :cond_3

    move p1, v4

    .line 79
    .end local v4           #offset:I
    .restart local p1
    goto :goto_1

    .line 83
    .end local p1
    .restart local v4       #offset:I
    :cond_3
    const v7, 0x7fffffff

    if-gt v5, v7, :cond_4

    if-ge v5, v8, :cond_5

    :cond_4
    move p1, v4

    .line 84
    .end local v4           #offset:I
    .restart local p1
    goto :goto_1

    .line 86
    .end local p1
    .restart local v4       #offset:I
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move p1, v4

    .end local v4           #offset:I
    .restart local p1
    goto :goto_1
.end method
