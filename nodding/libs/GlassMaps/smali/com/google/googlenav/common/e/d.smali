.class public final Lcom/google/googlenav/common/e/d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/e/c;

.field private b:I

.field private c:I

.field private d:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/e/c;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/common/e/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/common/e/d;->b:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlenav/common/e/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/e/d;->d:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/googlenav/common/e/d;->c:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/common/e/d;->b:I

    iget-object v2, p0, Lcom/google/googlenav/common/e/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-static {v2}, Lcom/google/googlenav/common/e/c;->a(Lcom/google/googlenav/common/e/c;)I

    move-result v2

    if-gt v0, v2, :cond_2

    :goto_1
    iget v0, p0, Lcom/google/googlenav/common/e/d;->b:I

    iget-object v2, p0, Lcom/google/googlenav/common/e/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-static {v2}, Lcom/google/googlenav/common/e/c;->a(Lcom/google/googlenav/common/e/c;)I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/common/e/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-static {v0}, Lcom/google/googlenav/common/e/c;->b(Lcom/google/googlenav/common/e/c;)[Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/google/googlenav/common/e/d;->b:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/common/e/d;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/googlenav/common/e/d;->b:I

    iput v0, p0, Lcom/google/googlenav/common/e/d;->c:I

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/googlenav/common/e/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/e/d;->b:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/common/e/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-static {v0}, Lcom/google/googlenav/common/e/c;->c(Lcom/google/googlenav/common/e/c;)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/common/e/d;->d:Ljava/util/Enumeration;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/common/e/d;->a:Lcom/google/googlenav/common/e/c;

    invoke-static {v0}, Lcom/google/googlenav/common/e/c;->c(Lcom/google/googlenav/common/e/c;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/e/d;->d:Ljava/util/Enumeration;

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/common/e/d;->d:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/common/e/d;->d:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/common/e/d;->c:I

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/common/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/common/e/d;->c:I

    const/high16 v1, -0x8000

    iput v1, p0, Lcom/google/googlenav/common/e/d;->c:I

    return v0
.end method
