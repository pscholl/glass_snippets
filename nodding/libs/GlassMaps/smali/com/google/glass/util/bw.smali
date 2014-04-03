.class public final Lcom/google/glass/util/bw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/glass/util/v;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/util/v;

    const-string v1, "settings"

    invoke-direct {v0, v1}, Lcom/google/glass/util/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/bw;->a:Lcom/google/glass/util/v;

    iput-object p1, p0, Lcom/google/glass/util/bw;->b:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/glass/util/bx;

    invoke-direct {v0, p0}, Lcom/google/glass/util/bx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/bw;->a:Lcom/google/glass/util/v;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/v;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/glass/util/bw;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iget-object v0, p0, Lcom/google/glass/util/bw;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/c;->a(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    return-void
.end method
