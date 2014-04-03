.class final Lcom/google/glass/logging/g;
.super Lcom/google/glass/timeline/g;


# instance fields
.field final synthetic a:Lcom/google/glass/timeline/d;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/d;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/g;->a:Lcom/google/glass/timeline/d;

    iput-object p2, p0, Lcom/google/glass/logging/g;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/logging/g;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/logging/g;->a:Lcom/google/glass/timeline/d;

    iget-object v1, p0, Lcom/google/glass/logging/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/logging/g;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/am;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {}, Lcom/google/glass/logging/f;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Item updated."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/logging/g;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method
