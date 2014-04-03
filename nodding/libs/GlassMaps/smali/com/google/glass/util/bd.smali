.class final Lcom/google/glass/util/bd;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/util/be;

    invoke-direct {v0}, Lcom/google/glass/util/be;-><init>()V

    sput-object v0, Lcom/google/glass/util/bd;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/google/glass/util/bd;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
