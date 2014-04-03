.class public final Lcom/google/common/util/concurrent/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/util/concurrent/b;

.field private static final b:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/g;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/g;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/e;->a:Lcom/google/common/util/concurrent/b;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/h;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/v;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/e;->b:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public static a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/b;)Lcom/google/common/util/concurrent/m;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/p;->a()Lcom/google/common/util/concurrent/o;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/e;->a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/b;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/b;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/m;
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/common/util/concurrent/i;-><init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/f;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/l;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
