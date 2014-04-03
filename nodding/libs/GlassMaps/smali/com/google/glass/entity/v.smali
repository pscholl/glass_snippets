.class final Lcom/google/glass/entity/v;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/widget/Adapter;

.field final synthetic b:Lcom/google/glass/entity/s;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/s;Landroid/widget/Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/v;->b:Lcom/google/glass/entity/s;

    iput-object p2, p0, Lcom/google/glass/entity/v;->a:Landroid/widget/Adapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/entity/v;->b:Lcom/google/glass/entity/s;

    iget-object v0, v0, Lcom/google/glass/entity/s;->a:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/entity/v;->a:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    return-void
.end method
