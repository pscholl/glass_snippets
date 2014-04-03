.class public Lcom/google/glass/widget/OptionMenu;
.super Ljava/lang/Object;
.source "OptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/OptionMenu$Item;,
        Lcom/google/glass/widget/OptionMenu$ItemStateListener;,
        Lcom/google/glass/widget/OptionMenu$ItemState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG_MENU:Ljava/lang/String; = "menu"

.field private static final TAG_MULTIPLE_STATE_ITEM:Ljava/lang/String; = "state-item"

.field private static final TAG_SINGLE_STATE_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final context:Landroid/content/Context;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/widget/OptionMenu$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    .line 284
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenu;->context:Landroid/content/Context;

    .line 285
    return-void
.end method

.method public static inflateFrom(Landroid/content/Context;I)Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .parameter "context"
    .parameter "menuResId"

    .prologue
    .line 498
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(Lcom/google/glass/widget/OptionMenu;I)Lcom/google/glass/widget/OptionMenu;

    move-result-object v0

    return-object v0
.end method

.method private static inflateFrom(Lcom/google/glass/widget/OptionMenu;I)Lcom/google/glass/widget/OptionMenu;
    .locals 5
    .parameter "menu"
    .parameter "menuResId"

    .prologue
    .line 510
    const/4 v2, 0x0

    .line 512
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/widget/OptionMenu;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 513
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 514
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-static {p0, v2, v0}, Lcom/google/glass/widget/OptionMenu;->parseMenu(Lcom/google/glass/widget/OptionMenu;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 520
    if-eqz v2, :cond_0

    .line 521
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 515
    .end local v0           #attrs:Landroid/util/AttributeSet;
    :catch_0
    move-exception v1

    .line 516
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating option menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 521
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 517
    :catch_1
    move-exception v1

    .line 518
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroid/view/InflateException;

    const-string v4, "Error inflating option menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static parseItem(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 8
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 574
    sget-object v5, Lcom/google/glass/common/R$styleable;->OptionMenuItem:[I

    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 575
    .local v4, params:Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 576
    .local v0, id:I
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 577
    .local v3, name:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 578
    .local v1, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 580
    new-instance v2, Lcom/google/glass/widget/OptionMenu$Item;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 581
    .local v2, item:Lcom/google/glass/widget/OptionMenu$Item;
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    invoke-virtual {v2, v7}, Lcom/google/glass/widget/OptionMenu$Item;->setDefault(Z)V

    .line 584
    :cond_0
    return-object v2
.end method

.method private static parseMenu(Lcom/google/glass/widget/OptionMenu;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu;
    .locals 4
    .parameter "menu"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->context:Landroid/content/Context;

    .line 545
    .local v0, context:Landroid/content/Context;
    const-string v2, "menu"

    invoke-static {p1, v2}, Lcom/google/glass/widget/OptionMenu;->skipToStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "<menu> tag not found!"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, event:I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 551
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "menu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    return-object p0

    .line 555
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 556
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 557
    invoke-static {v0, p1, p2}, Lcom/google/glass/widget/OptionMenu;->parseItem(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 550
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 558
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "state-item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    invoke-static {v0, p1, p2}, Lcom/google/glass/widget/OptionMenu;->parseStateItem(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    goto :goto_1

    .line 562
    :cond_4
    invoke-static {p1}, Lcom/google/glass/widget/OptionMenu;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto :goto_1

    .line 566
    :cond_5
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "</menu> tag not found!"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseStateItem(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 10
    .parameter "context"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    sget-object v8, Lcom/google/glass/common/R$styleable;->OptionMenuItem:[I

    invoke-virtual {p0, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 594
    .local v5, params:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 595
    .local v1, id:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 597
    new-instance v3, Lcom/google/glass/widget/OptionMenu$Item;

    invoke-direct {v3, v1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(I)V

    .line 598
    .local v3, item:Lcom/google/glass/widget/OptionMenu$Item;
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 599
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/google/glass/widget/OptionMenu$Item;->setDefault(Z)V

    .line 602
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, event:I
    :goto_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    .line 603
    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "state-item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 604
    return-object v3

    .line 607
    :cond_1
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    .line 608
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "state"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 610
    sget-object v8, Lcom/google/glass/common/R$styleable;->OptionMenuItem:[I

    invoke-virtual {p0, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 612
    .local v7, stateParams:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 613
    .local v6, stateId:I
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 614
    .local v4, name:Ljava/lang/CharSequence;
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 615
    .local v2, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 617
    new-instance v8, Lcom/google/glass/widget/OptionMenu$ItemState;

    invoke-direct {v8, v6, v4, v2}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v8}, Lcom/google/glass/widget/OptionMenu$Item;->addState(Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 602
    .end local v2           #image:Landroid/graphics/drawable/Drawable;
    .end local v4           #name:Ljava/lang/CharSequence;
    .end local v6           #stateId:I
    .end local v7           #stateParams:Landroid/content/res/TypedArray;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 620
    :cond_3
    invoke-static {p1}, Lcom/google/glass/widget/OptionMenu;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto :goto_1

    .line 625
    :cond_4
    new-instance v8, Landroid/view/InflateException;

    const-string v9, "</state-item> tag not found!"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 633
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, name:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 636
    .local v0, depth:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .local v1, event:I
    if-eq v1, v3, :cond_1

    .line 637
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 643
    :goto_1
    return v3

    .line 641
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 643
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static skipToStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 3
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 653
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .local v0, event:I
    if-eq v0, v2, :cond_0

    .line 654
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    :cond_0
    return v2

    .line 657
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0
.end method


# virtual methods
.method public addAllItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/OptionMenu$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 348
    return-void
.end method

.method public addItem(ILjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "itemName"

    .prologue
    .line 294
    new-instance v0, Lcom/google/glass/widget/OptionMenu$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 295
    return-void
.end method

.method public addItem(ILjava/lang/String;I)V
    .locals 2
    .parameter "id"
    .parameter "itemName"
    .parameter "imageResId"

    .prologue
    .line 305
    new-instance v1, Lcom/google/glass/widget/OptionMenu$Item;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, p2, v0}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 307
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public addItem(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "id"
    .parameter "itemName"
    .parameter "bitmap"

    .prologue
    .line 317
    new-instance v0, Lcom/google/glass/widget/OptionMenu$Item;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 318
    return-void
.end method

.method public varargs addItem(I[Lcom/google/glass/widget/OptionMenu$ItemState;)V
    .locals 5
    .parameter "id"
    .parameter "states"

    .prologue
    .line 327
    new-instance v2, Lcom/google/glass/widget/OptionMenu$Item;

    invoke-direct {v2, p1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(I)V

    .line 328
    .local v2, item:Lcom/google/glass/widget/OptionMenu$Item;
    move-object v0, p2

    .local v0, arr$:[Lcom/google/glass/widget/OptionMenu$ItemState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 329
    .local v4, state:Lcom/google/glass/widget/OptionMenu$ItemState;
    invoke-virtual {v2, v4}, Lcom/google/glass/widget/OptionMenu$Item;->addState(Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v4           #state:Lcom/google/glass/widget/OptionMenu$ItemState;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 332
    return-void
.end method

.method public addItem(Lcom/google/glass/widget/OptionMenu$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    return-void
.end method

.method public findItem(I)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 2
    .parameter "id"

    .prologue
    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    #getter for: Lcom/google/glass/widget/OptionMenu$Item;->itemId:I
    invoke-static {v1}, Lcom/google/glass/widget/OptionMenu$Item;->access$200(Lcom/google/glass/widget/OptionMenu$Item;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 472
    :goto_1
    return-object v1

    .line 467
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getEnabledItem(I)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 6
    .parameter "pos"

    .prologue
    .line 438
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 439
    iget-object v3, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 440
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, p1, -0x1

    .end local p1
    .local v2, pos:I
    if-nez p1, :cond_0

    .line 441
    return-object v1

    :cond_0
    move p1, v2

    .line 438
    .end local v2           #pos:I
    .restart local p1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Enabled Items: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenu;->getEnabledItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getEnabledItemCount()I
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/OptionMenu$Item;

    #getter for: Lcom/google/glass/widget/OptionMenu$Item;->isEnabled:Z
    invoke-static {v2}, Lcom/google/glass/widget/OptionMenu$Item;->access$000(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    add-int/lit8 v0, v0, 0x1

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return v0
.end method

.method public getItem(I)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 1
    .parameter "pos"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenu$Item;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/OptionMenu$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibleItem(I)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 6
    .parameter "pos"

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 457
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, p1, -0x1

    .end local p1
    .local v2, pos:I
    if-nez p1, :cond_0

    .line 458
    return-object v1

    :cond_0
    move p1, v2

    .line 455
    .end local v2           #pos:I
    .restart local p1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Visible Items: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getVisibleItemCount()I
    .locals 3

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/OptionMenu$Item;

    #getter for: Lcom/google/glass/widget/OptionMenu$Item;->isVisible:Z
    invoke-static {v2}, Lcom/google/glass/widget/OptionMenu$Item;->access$100(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    return v0
.end method

.method public inflateFrom(I)V
    .locals 0
    .parameter "menuResId"

    .prologue
    .line 532
    invoke-static {p0, p1}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(Lcom/google/glass/widget/OptionMenu;I)Lcom/google/glass/widget/OptionMenu;

    .line 533
    return-void
.end method

.method public insertItem(IILjava/lang/String;I)V
    .locals 1
    .parameter "insertPosition"
    .parameter "id"
    .parameter "itemName"
    .parameter "imageResId"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 360
    return-void
.end method

.method public insertItem(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "insertPosition"
    .parameter "id"
    .parameter "itemName"
    .parameter "imageDrawable"

    .prologue
    .line 371
    new-instance v0, Lcom/google/glass/widget/OptionMenu$Item;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/OptionMenu;->insertItem(ILcom/google/glass/widget/OptionMenu$Item;)V

    .line 372
    return-void
.end method

.method public insertItem(ILcom/google/glass/widget/OptionMenu$Item;)V
    .locals 1
    .parameter "insertPosition"
    .parameter "item"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 377
    return-void
.end method

.method public removeItem(Lcom/google/glass/widget/OptionMenu$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method
