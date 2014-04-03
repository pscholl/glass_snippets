.class final Lcom/google/glass/entity/z;
.super Landroid/util/LruCache;


# instance fields
.field final synthetic a:Lcom/google/glass/entity/y;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/y;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/entity/z;->a:Lcom/google/glass/entity/y;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;[B)I
    .locals 1

    array-length v0, p1

    return v0
.end method


# virtual methods
.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/google/glass/entity/z;->a(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method
