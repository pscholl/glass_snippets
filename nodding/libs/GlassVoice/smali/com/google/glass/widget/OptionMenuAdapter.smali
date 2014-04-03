.class public Lcom/google/glass/widget/OptionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "OptionMenuAdapter.java"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/ViewRecycler;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/google/glass/widget/OptionMenuView$Listener;

.field private final optionMenu:Lcom/google/glass/widget/OptionMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/OptionMenuAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu;Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 0
    .parameter "context"
    .parameter "optionMenu"
    .parameter "listener"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/glass/widget/OptionMenuAdapter;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    .line 29
    iput-object p3, p0, Lcom/google/glass/widget/OptionMenuAdapter;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuAdapter;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuAdapter;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/OptionMenu;->getVisibleItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuAdapter;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuAdapter;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    const/4 v9, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuAdapter;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v2

    .line 56
    .local v2, item:Lcom/google/glass/widget/OptionMenu$Item;
    if-nez p2, :cond_0

    .line 57
    new-instance p2, Lcom/google/glass/widget/OptionMenuItemView;

    .end local p2
    iget-object v5, p0, Lcom/google/glass/widget/OptionMenuAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v5}, Lcom/google/glass/widget/OptionMenuItemView;-><init>(Landroid/content/Context;)V

    .restart local p2
    move-object v5, p2

    .line 58
    check-cast v5, Lcom/google/glass/widget/OptionMenuItemView;

    iget-object v6, p0, Lcom/google/glass/widget/OptionMenuAdapter;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/OptionMenuItemView;->setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V

    .line 62
    :cond_0
    sget v5, Lcom/google/glass/common/R$id;->icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, image:Landroid/widget/ImageView;
    sget v5, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 64
    .local v3, label:Lcom/google/glass/widget/TypophileTextView;
    sget-object v5, Lcom/google/glass/widget/OptionMenuAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "IMAGE=%s, item=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu$ItemState;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$Item;->getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu$ItemState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, p2

    .line 67
    check-cast v5, Lcom/google/glass/widget/OptionMenuItemView;

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$Item;->shouldSuppressTapSound()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/OptionMenuItemView;->setShouldSuppressSingleTapSound(Z)V

    .line 71
    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 72
    const/high16 v4, 0x3f00

    .line 73
    .local v4, semiTransparent:F
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74
    invoke-virtual {v3, v4}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 78
    .end local v4           #semiTransparent:F
    :cond_1
    sget v5, Lcom/google/glass/common/R$id;->description:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TipsView;

    .line 79
    .local v0, desc:Lcom/google/glass/widget/TipsView;
    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$Item;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu$Item;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v9}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 87
    :goto_0
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item:I

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuAdapter;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 90
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 92
    return-object p2

    .line 83
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 97
    return-void
.end method
