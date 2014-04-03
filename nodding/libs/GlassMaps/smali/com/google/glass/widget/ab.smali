.class public final Lcom/google/glass/widget/ab;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/n;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/glass/widget/x;

.field private final d:Lcom/google/glass/widget/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ab;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/x;Lcom/google/glass/widget/ag;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/glass/widget/ab;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/widget/ab;->c:Lcom/google/glass/widget/x;

    iput-object p3, p0, Lcom/google/glass/widget/ab;->d:Lcom/google/glass/widget/ag;

    return-void
.end method

.method private a(I)Lcom/google/glass/widget/y;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ab;->c:Lcom/google/glass/widget/x;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/x;->a(I)Lcom/google/glass/widget/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ab;->c:Lcom/google/glass/widget/x;

    invoke-virtual {v0}, Lcom/google/glass/widget/x;->c()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/widget/ab;->a(I)Lcom/google/glass/widget/y;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/glass/widget/ab;->a(I)Lcom/google/glass/widget/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/y;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/widget/ab;->a(I)Lcom/google/glass/widget/y;

    move-result-object v4

    if-nez p2, :cond_2

    new-instance v1, Lcom/google/glass/widget/OptionMenuItemView;

    iget-object v0, p0, Lcom/google/glass/widget/ab;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/glass/widget/OptionMenuItemView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lcom/google/glass/widget/OptionMenuItemView;

    iget-object v2, p0, Lcom/google/glass/widget/ab;->d:Lcom/google/glass/widget/ag;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/OptionMenuItemView;->setListener(Lcom/google/glass/widget/ag;)V

    move-object v3, v1

    :goto_0
    sget v0, Lcom/google/glass/d/f;->icon:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/d/f;->label:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    sget-object v2, Lcom/google/glass/widget/ab;->a:Lcom/google/glass/logging/i;

    const-string v5, "IMAGE=%s, item=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/glass/widget/y;->e()Lcom/google/glass/widget/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/z;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/google/glass/widget/y;->e()Lcom/google/glass/widget/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v3

    check-cast v2, Lcom/google/glass/widget/OptionMenuItemView;

    invoke-virtual {v4}, Lcom/google/glass/widget/y;->f()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/OptionMenuItemView;->setShouldSuppressSingleTapSound(Z)V

    invoke-virtual {v4}, Lcom/google/glass/widget/y;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    :cond_0
    sget v0, Lcom/google/glass/d/f;->description:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TipsView;

    invoke-virtual {v4}, Lcom/google/glass/widget/y;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/widget/y;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    :goto_1
    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item:I

    invoke-direct {p0, p1}, Lcom/google/glass/widget/ab;->a(I)Lcom/google/glass/widget/y;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v3, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v3

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move-object v3, p2

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
