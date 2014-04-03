.class public final Lcom/google/glass/location/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field private final a:J

.field private final b:Lcom/google/glass/util/o;


# direct methods
.method public constructor <init>(JLcom/google/glass/util/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/glass/location/h;->a:J

    iput-object p3, p0, Lcom/google/glass/location/h;->b:Lcom/google/glass/util/o;

    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/h;->b:Lcom/google/glass/util/o;

    invoke-interface {v1}, Lcom/google/glass/util/o;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/glass/location/h;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/location/Location;

    invoke-direct {p0, p1}, Lcom/google/glass/location/h;->a(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method
