.class public final Lcom/google/googlenav/c/d;
.super Ljava/lang/Object;


# static fields
.field private static c:I

.field private static d:I

.field private static final e:[Lcom/google/googlenav/c/d;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    const/16 v5, 0x16

    sput v0, Lcom/google/googlenav/c/d;->c:I

    sput v5, Lcom/google/googlenav/c/d;->d:I

    new-array v1, v5, [Lcom/google/googlenav/c/d;

    sput-object v1, Lcom/google/googlenav/c/d;->e:[Lcom/google/googlenav/c/d;

    const/16 v1, 0x100

    :goto_0
    if-gt v0, v5, :cond_0

    sget-object v2, Lcom/google/googlenav/c/d;->e:[Lcom/google/googlenav/c/d;

    add-int/lit8 v3, v0, -0x1

    new-instance v4, Lcom/google/googlenav/c/d;

    invoke-direct {v4, v0, v1}, Lcom/google/googlenav/c/d;-><init>(II)V

    aput-object v4, v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/c/d;->b:I

    iput p2, p0, Lcom/google/googlenav/c/d;->a:I

    return-void
.end method

.method public static a(I)Lcom/google/googlenav/c/d;
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/google/googlenav/c/d;->c:I

    if-lt p0, v1, :cond_1

    const/16 v1, 0x16

    if-gt p0, v1, :cond_1

    sget v0, Lcom/google/googlenav/c/d;->d:I

    if-le p0, v0, :cond_0

    sget p0, Lcom/google/googlenav/c/d;->d:I

    :cond_0
    sget-object v0, Lcom/google/googlenav/c/d;->e:[Lcom/google/googlenav/c/d;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/c/d;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
