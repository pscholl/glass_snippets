.class Lcom/google/common/base/Functions$FunctionForMapNoDefault;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionForMapNoDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    .line 110
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, result:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Key \'%s\' not present in map"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-object v0

    :cond_1
    move v1, v2

    .line 114
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 120
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    instance-of v1, p1, Lcom/google/common/base/Functions$FunctionForMapNoDefault;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;

    .line 122
    .local v0, that:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<**>;"
    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 124
    .end local v0           #that:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
