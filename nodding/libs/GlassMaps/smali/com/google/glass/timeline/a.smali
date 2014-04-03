.class public final Lcom/google/glass/timeline/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/googlex/glass/common/proto/ab;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/glass/net/f;


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/a;->b:Lcom/google/glass/logging/i;

    new-instance v0, Lcom/google/glass/net/f;

    new-instance v1, Lcom/google/glass/timeline/b;

    invoke-direct {v1}, Lcom/google/glass/timeline/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/f;-><init>(Lcom/google/glass/net/g;)V

    sput-object v0, Lcom/google/glass/timeline/a;->c:Lcom/google/glass/net/f;

    new-instance v0, Lcom/google/googlex/glass/common/proto/ab;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ab;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/a;->a:Lcom/google/googlex/glass/common/proto/ab;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/timeline/a;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ab;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/ab;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/ab;->f:Ljava/lang/String;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
