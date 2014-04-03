.class final Lcom/google/glass/maps/az;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Landroid/view/ViewStub;

.field c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/az;->a:I

    iput-object p1, p0, Lcom/google/glass/maps/az;->b:Landroid/view/ViewStub;

    return-void
.end method


# virtual methods
.method final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/az;->c:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/az;->b:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/az;->c:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/az;->c:Landroid/view/View;

    return-object v0
.end method
