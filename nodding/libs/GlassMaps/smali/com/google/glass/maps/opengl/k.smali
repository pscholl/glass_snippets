.class final Lcom/google/glass/maps/opengl/k;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/glass/maps/opengl/l;
    .locals 2

    new-instance v0, Lcom/google/glass/maps/opengl/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/l;-><init>(Lcom/google/glass/maps/opengl/k;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/opengl/k;->a()Lcom/google/glass/maps/opengl/l;

    move-result-object v0

    return-object v0
.end method
