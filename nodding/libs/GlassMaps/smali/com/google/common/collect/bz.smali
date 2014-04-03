.class public abstract Lcom/google/common/collect/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/lang/Iterable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/common/collect/bz;->a:Ljava/lang/Iterable;

    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/google/common/collect/bz;->a:Ljava/lang/Iterable;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/common/collect/bz;
    .locals 1

    instance-of v0, p0, Lcom/google/common/collect/bz;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/bz;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ca;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/ca;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bz;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/common/base/aj;)Lcom/google/common/collect/bz;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bz;->a:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/ec;->a(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/bz;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/bz;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bz;->a:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/ec;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
