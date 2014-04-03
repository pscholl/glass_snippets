.class public abstract Lcom/google/protobuf/nano/Extension$TypeLiteral;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TypeLiteral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 82
    .local p0, this:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 84
    .local v0, superclass:Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing type parameter"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0           #superclass:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->getListType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getListType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private getTargetClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<TT;>;"
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method private isList()Z
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    return v0
.end method
