.class public final Lcom/google/common/collect/Tables;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/base/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/mi;

    invoke-direct {v0}, Lcom/google/common/collect/mi;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables;->a:Lcom/google/common/base/v;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/v;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/Tables;->b()Lcom/google/common/base/v;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/mh;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Tables$ImmutableCell;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Tables$ImmutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b()Lcom/google/common/base/v;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Tables;->a:Lcom/google/common/base/v;

    return-object v0
.end method
