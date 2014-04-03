.class final Lcom/google/glass/util/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/util/p;

    invoke-direct {v1}, Lcom/google/glass/util/p;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/glass/util/r;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lcom/google/glass/util/r;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method
