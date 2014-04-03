.class final Lcom/google/glass/util/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/glass/util/bq;


# direct methods
.method constructor <init>(Lcom/google/glass/util/bq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/br;->b:Lcom/google/glass/util/bq;

    iput-object p2, p0, Lcom/google/glass/util/br;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/br;->b:Lcom/google/glass/util/bq;

    iget-object v1, p0, Lcom/google/glass/util/br;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/bq;->a(Landroid/content/Context;)Lcom/google/glass/util/bq;

    return-void
.end method
