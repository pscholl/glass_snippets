.class public final Lcom/google/glass/entity/y;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static b:Lcom/google/glass/entity/y;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/y;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/entity/z;

    const/high16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/z;-><init>(Lcom/google/glass/entity/y;I)V

    iput-object v0, p0, Lcom/google/glass/entity/y;->d:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/google/glass/entity/y;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/entity/y;->b:Lcom/google/glass/entity/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/entity/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/entity/y;->b:Lcom/google/glass/entity/y;

    :cond_0
    return-void
.end method
