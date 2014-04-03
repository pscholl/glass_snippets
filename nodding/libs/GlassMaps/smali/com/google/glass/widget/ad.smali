.class final Lcom/google/glass/widget/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/widget/ag;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/ac;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/ad;->a:Lcom/google/glass/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/widget/y;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/ad;->a:Lcom/google/glass/widget/ac;

    invoke-static {v0}, Lcom/google/glass/widget/ac;->a(Lcom/google/glass/widget/ac;)Lcom/google/glass/widget/af;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/widget/af;->a(Lcom/google/glass/widget/y;)Z

    move-result v0

    return v0
.end method
