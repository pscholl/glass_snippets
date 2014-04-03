.class final Lcom/google/glass/maps/s;
.super Lcom/google/common/util/concurrent/AbstractFuture;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/MapHelper;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/s;->a:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    iput-object p2, p0, Lcom/google/glass/maps/s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/s;->a:Lcom/google/glass/maps/MapHelper;

    iget-object v1, p0, Lcom/google/glass/maps/s;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/maps/MapHelper;->a(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/s;->a([B)Z

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected final a([B)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
