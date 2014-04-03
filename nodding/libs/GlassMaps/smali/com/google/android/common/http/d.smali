.class public final Lcom/google/android/common/http/d;
.super Lorg/apache/http/entity/HttpEntityWrapper;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object p2, p0, Lcom/google/android/common/http/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/common/http/d;->b:I

    iput-wide p4, p0, Lcom/google/android/common/http/d;->c:J

    iput-wide p6, p0, Lcom/google/android/common/http/d;->d:J

    iput-wide p8, p0, Lcom/google/android/common/http/d;->e:J

    iput-wide p10, p0, Lcom/google/android/common/http/d;->f:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/common/http/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/common/http/d;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/common/http/d;)I
    .locals 1

    iget v0, p0, Lcom/google/android/common/http/d;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/common/http/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/http/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/common/http/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/common/http/d;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/common/http/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/common/http/d;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/common/http/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/common/http/d;->d:J

    return-wide v0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/google/android/common/http/e;

    invoke-direct {v1, p0, v0}, Lcom/google/android/common/http/e;-><init>(Lcom/google/android/common/http/d;Ljava/io/InputStream;)V

    return-object v1
.end method
