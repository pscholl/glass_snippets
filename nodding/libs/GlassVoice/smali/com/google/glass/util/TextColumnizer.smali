.class public Lcom/google/glass/util/TextColumnizer;
.super Ljava/lang/Object;
.source "TextColumnizer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static columnize(Ljava/lang/String;Landroid/text/TextPaint;IILandroid/text/Layout$Alignment;FFZ)Ljava/util/List;
    .locals 15
    .parameter "text"
    .parameter "textPaint"
    .parameter "columnWidth"
    .parameter "columnHeight"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"
    .parameter "includePad"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "II",
            "Landroid/text/Layout$Alignment;",
            "FFZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v11, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 47
    .local v3, bufStart:I
    const/4 v4, 0x0

    .line 50
    .local v4, bufEnd:I
    const-string v2, "(?<=[\\s])"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, words:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 53
    .local v12, i:I
    :cond_0
    :goto_0
    array-length v2, v14

    if-ge v12, v2, :cond_2

    .line 54
    aget-object v13, v14, v12

    .line 55
    .local v13, word:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    .line 57
    new-instance v1, Landroid/text/StaticLayout;

    move-object v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 67
    .local v1, staticLayout:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_1

    .line 70
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v4, v2

    .line 71
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    move v3, v4

    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 75
    array-length v2, v14

    if-ne v12, v2, :cond_0

    .line 78
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v1           #staticLayout:Landroid/text/StaticLayout;
    .end local v13           #word:Ljava/lang/String;
    :cond_2
    return-object v11
.end method
