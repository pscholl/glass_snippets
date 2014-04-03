.class public abstract Lcom/google/common/collect/bd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/collect/bd;

.field private static final b:Lcom/google/common/collect/bd;

.field private static final c:Lcom/google/common/collect/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/be;

    invoke-direct {v0}, Lcom/google/common/collect/be;-><init>()V

    sput-object v0, Lcom/google/common/collect/bd;->a:Lcom/google/common/collect/bd;

    new-instance v0, Lcom/google/common/collect/bf;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/bf;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/bd;->b:Lcom/google/common/collect/bd;

    new-instance v0, Lcom/google/common/collect/bf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/bf;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/bd;->c:Lcom/google/common/collect/bd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/be;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/bd;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/bd;
    .locals 1

    sget-object v0, Lcom/google/common/collect/bd;->a:Lcom/google/common/collect/bd;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/bd;
    .locals 1

    sget-object v0, Lcom/google/common/collect/bd;->b:Lcom/google/common/collect/bd;

    return-object v0
.end method

.method static synthetic d()Lcom/google/common/collect/bd;
    .locals 1

    sget-object v0, Lcom/google/common/collect/bd;->c:Lcom/google/common/collect/bd;

    return-object v0
.end method

.method static synthetic e()Lcom/google/common/collect/bd;
    .locals 1

    sget-object v0, Lcom/google/common/collect/bd;->a:Lcom/google/common/collect/bd;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bd;
.end method

.method public abstract b()I
.end method
