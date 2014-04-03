.class final Lcom/google/glass/widget/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/ao;->a:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/ao;->a:Lcom/google/glass/widget/SliderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/SliderView;->a(Lcom/google/glass/widget/SliderView;Z)V

    return-void
.end method
