.class final Lcom/google/glass/timeline/e;
.super Lcom/google/glass/timeline/g;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic c:Lcom/google/glass/timeline/d;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/d;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/timeline/e;->c:Lcom/google/glass/timeline/d;

    iput-object p2, p0, Lcom/google/glass/timeline/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/timeline/e;->b:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Lcom/google/googlex/glass/common/proto/am;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/am;-><init>()V

    const/4 v0, 0x6

    iput v0, v3, Lcom/google/googlex/glass/common/proto/am;->b:I

    iget-object v0, p0, Lcom/google/glass/timeline/e;->c:Lcom/google/glass/timeline/d;

    iget-object v1, p0, Lcom/google/glass/timeline/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/e;->b:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/am;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
