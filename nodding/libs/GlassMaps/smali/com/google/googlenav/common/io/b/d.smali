.class public final Lcom/google/googlenav/common/io/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final b:[Lcom/google/googlenav/common/io/b/e;


# instance fields
.field private final a:Lcom/google/googlenav/common/e/c;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0xa8

    new-array v1, v1, [Lcom/google/googlenav/common/io/b/e;

    sput-object v1, Lcom/google/googlenav/common/io/b/d;->b:[Lcom/google/googlenav/common/io/b/e;

    move v3, v0

    move v1, v0

    :goto_0
    const/4 v0, 0x7

    if-gt v3, v0, :cond_1

    const/16 v0, 0x10

    :goto_1
    const/16 v2, 0x25

    if-ge v0, v2, :cond_0

    sget-object v4, Lcom/google/googlenav/common/io/b/d;->b:[Lcom/google/googlenav/common/io/b/e;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/google/googlenav/common/io/b/e;

    shl-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/googlenav/common/io/b/e;-><init>(ILjava/lang/Object;)V

    aput-object v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/common/e/c;

    invoke-direct {v0}, Lcom/google/googlenav/common/e/c;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/b/d;->c:Ljava/lang/String;

    return-void
.end method

.method private static c(I)Lcom/google/googlenav/common/io/b/e;
    .locals 2

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x15

    and-int/lit16 v1, p0, 0xff

    add-int/lit8 v1, v1, -0x10

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/googlenav/common/io/b/d;->b:[Lcom/google/googlenav/common/io/b/e;

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/e;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/common/io/b/e;->a(Lcom/google/googlenav/common/io/b/e;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;
    .locals 2

    iget-object v1, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/google/googlenav/common/io/b/d;->c(I)Lcom/google/googlenav/common/io/b/e;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/google/googlenav/common/e/c;->a(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/googlenav/common/io/b/e;

    invoke-direct {v0, p1, p3}, Lcom/google/googlenav/common/io/b/e;-><init>(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/e;

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/common/io/b/e;->b(Lcom/google/googlenav/common/io/b/e;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/google/googlenav/common/io/b/d;

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    iget-object v1, p1, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/e/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e/c;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
