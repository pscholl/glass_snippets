.class final Lcom/google/glass/entity/t;
.super Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;


# instance fields
.field final synthetic a:Lcom/google/glass/entity/s;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/s;Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/t;->a:Lcom/google/glass/entity/s;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/entity/t;->a:Lcom/google/glass/entity/s;

    invoke-static {p2}, Lcom/google/glass/entity/s;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast p1, Lcom/google/glass/entity/EntityItemView;

    invoke-virtual {p1}, Lcom/google/glass/entity/EntityItemView;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
