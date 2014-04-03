.class public abstract Lcom/google/glass/timeline/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method

.method public final b()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/glass/timeline/g;->a()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/g;->a:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-void
.end method
