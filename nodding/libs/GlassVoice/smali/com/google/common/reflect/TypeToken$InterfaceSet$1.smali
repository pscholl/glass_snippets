.class Lcom/google/common/reflect/TypeToken$InterfaceSet$1;
.super Ljava/lang/Object;
.source "TypeToken.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken$InterfaceSet;->rawTypes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/reflect/TypeToken$InterfaceSet;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$InterfaceSet;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet$1;,"Lcom/google/common/reflect/TypeToken$InterfaceSet.1;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$InterfaceSet$1;->this$1:Lcom/google/common/reflect/TypeToken$InterfaceSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet$1;,"Lcom/google/common/reflect/TypeToken$InterfaceSet.1;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 604
    .local p0, this:Lcom/google/common/reflect/TypeToken$InterfaceSet$1;,"Lcom/google/common/reflect/TypeToken$InterfaceSet.1;"
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$InterfaceSet$1;->apply(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
