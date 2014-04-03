.class public final Lcom/google/common/io/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:Lcom/google/common/io/h;


# instance fields
.field final a:Lcom/google/common/io/h;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final c:Ljava/util/LinkedList;

.field private d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/common/io/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/io/g;->a:Lcom/google/common/io/g;

    :goto_0
    sput-object v0, Lcom/google/common/io/e;->b:Lcom/google/common/io/h;

    return-void

    :cond_0
    sget-object v0, Lcom/google/common/io/f;->a:Lcom/google/common/io/f;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/io/h;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/e;->c:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/h;

    iput-object v0, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/h;

    return-void
.end method

.method public static a()Lcom/google/common/io/e;
    .locals 2

    new-instance v0, Lcom/google/common/io/e;

    sget-object v1, Lcom/google/common/io/e;->b:Lcom/google/common/io/h;

    invoke-direct {v0, v1}, Lcom/google/common/io/e;-><init>(Lcom/google/common/io/h;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    iput-object p1, p0, Lcom/google/common/io/e;->d:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/ax;->b(Ljava/lang/Throwable;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .locals 4

    iget-object v1, p0, Lcom/google/common/io/e;->d:Ljava/lang/Throwable;

    :goto_0
    iget-object v0, p0, Lcom/google/common/io/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/h;

    invoke-interface {v3, v0, v1, v2}, Lcom/google/common/io/h;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/common/io/e;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const-class v0, Ljava/io/IOException;

    invoke-static {v1, v0}, Lcom/google/common/base/ax;->b(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method
