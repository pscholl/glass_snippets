.class final Lcom/google/glass/widget/horizontalscroll/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/horizontalscroll/j;->b:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    iput-object p2, p0, Lcom/google/glass/widget/horizontalscroll/j;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/j;->b:Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/j;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V

    return-void
.end method
