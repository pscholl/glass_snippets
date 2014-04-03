.class Lcom/google/common/collect/FluentIterable$FromIterableFunction;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromIterableFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Iterable",
        "<TE;>;",
        "Lcom/google/common/collect/FluentIterable",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 523
    .local p0, this:Lcom/google/common/collect/FluentIterable$FromIterableFunction;,"Lcom/google/common/collect/FluentIterable$FromIterableFunction<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, this:Lcom/google/common/collect/FluentIterable$FromIterableFunction;,"Lcom/google/common/collect/FluentIterable$FromIterableFunction<TE;>;"
    .local p1, fromObject:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 523
    .local p0, this:Lcom/google/common/collect/FluentIterable$FromIterableFunction;,"Lcom/google/common/collect/FluentIterable$FromIterableFunction<TE;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FluentIterable$FromIterableFunction;->apply(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method
