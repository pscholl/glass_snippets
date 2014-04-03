.class final Lcom/google/glass/timeline/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/glass/timeline/d;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/timeline/f;->c:Lcom/google/glass/timeline/d;

    iput-object p2, p0, Lcom/google/glass/timeline/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/timeline/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/timeline/f;->c:Lcom/google/glass/timeline/d;

    iget-object v0, p0, Lcom/google/glass/timeline/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/f;->c:Lcom/google/glass/timeline/d;

    iget-object v2, p0, Lcom/google/glass/timeline/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/d;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Could not find item %s for deletion."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/f;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
