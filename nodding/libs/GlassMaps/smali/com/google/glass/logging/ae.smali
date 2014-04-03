.class final Lcom/google/glass/logging/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/net/s;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/ae;->a:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/googlex/glass/common/proto/m;)V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checkin successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checkin request cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatcher error while checking in device [errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/protobuf/nano/b;)V
    .locals 0

    check-cast p1, Lcom/google/googlex/glass/common/proto/m;

    invoke-static {p1}, Lcom/google/glass/logging/ae;->a(Lcom/google/googlex/glass/common/proto/m;)V

    return-void
.end method
