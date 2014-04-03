.class final Lcom/google/glass/app/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/glass/app/GlassError;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassError;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/i;->b:Lcom/google/glass/app/GlassError;

    iput-object p2, p0, Lcom/google/glass/app/i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/google/glass/util/bw;

    iget-object v1, p0, Lcom/google/glass/app/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/bw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/bw;->a()V

    return-void
.end method
