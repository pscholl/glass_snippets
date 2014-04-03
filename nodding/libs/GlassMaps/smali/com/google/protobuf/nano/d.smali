.class public final Lcom/google/protobuf/nano/d;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field public static final e:[I

.field public static final f:[J

.field public static final g:[F

.field public static final h:[D

.field public static final i:[Z

.field public static final j:[Ljava/lang/String;

.field public static final k:[[B

.field public static final l:[B

.field public static final m:[Ljava/lang/Integer;

.field public static final n:[Ljava/lang/Long;

.field public static final o:[Ljava/lang/Float;

.field public static final p:[Ljava/lang/Double;

.field public static final q:[Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v4}, Lcom/google/protobuf/nano/d;->a(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/d;->a:I

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/d;->a(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/d;->b:I

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/d;->a(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/d;->c:I

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/d;->a(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/d;->d:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/protobuf/nano/d;->e:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/protobuf/nano/d;->f:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/protobuf/nano/d;->g:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/protobuf/nano/d;->h:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/protobuf/nano/d;->i:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/protobuf/nano/d;->j:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/protobuf/nano/d;->k:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/protobuf/nano/d;->l:[B

    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/protobuf/nano/d;->m:[Ljava/lang/Integer;

    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/google/protobuf/nano/d;->n:[Ljava/lang/Long;

    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/google/protobuf/nano/d;->o:[Ljava/lang/Float;

    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/google/protobuf/nano/d;->p:[Ljava/lang/Double;

    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/protobuf/nano/d;->q:[Ljava/lang/Boolean;

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static a(Lcom/google/protobuf/nano/a;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/a;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static final b(Lcom/google/protobuf/nano/a;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->n()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/a;->b(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->m()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->a()I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/a;->c(I)V

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/a;->b(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
