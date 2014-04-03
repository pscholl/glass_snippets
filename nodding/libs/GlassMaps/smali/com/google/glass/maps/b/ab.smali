.class final Lcom/google/glass/maps/b/ab;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/glass/maps/b/aa;
    .locals 1

    new-instance v0, Lcom/google/glass/maps/b/aa;

    invoke-direct {v0}, Lcom/google/glass/maps/b/aa;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ab;->a()Lcom/google/glass/maps/b/aa;

    move-result-object v0

    return-object v0
.end method
