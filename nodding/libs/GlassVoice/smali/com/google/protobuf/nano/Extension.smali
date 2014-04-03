.class public Lcom/google/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/Extension$TypeLiteral;
    }
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
.field public final fieldNumber:I

.field public fieldType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field public isRepeatedField:Z

.field public listType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/protobuf/nano/Extension$TypeLiteral;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/nano/Extension$TypeLiteral",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/protobuf/nano/Extension;,"Lcom/google/protobuf/nano/Extension<TT;>;"
    .local p2, type:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    .line 51
    #calls: Lcom/google/protobuf/nano/Extension$TypeLiteral;->isList()Z
    invoke-static {p2}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->access$000(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->isRepeatedField:Z

    .line 52
    #calls: Lcom/google/protobuf/nano/Extension$TypeLiteral;->getTargetClass()Ljava/lang/Class;
    invoke-static {p2}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->access$100(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    .line 53
    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v0, :cond_0

    #calls: Lcom/google/protobuf/nano/Extension$TypeLiteral;->getListType()Ljava/lang/Class;
    invoke-static {p2}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->access$200(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(ILcom/google/protobuf/nano/Extension$TypeLiteral;)Lcom/google/protobuf/nano/Extension;
    .locals 1
    .parameter "fieldNumber"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/nano/Extension$TypeLiteral",
            "<TT;>;)",
            "Lcom/google/protobuf/nano/Extension",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, type:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<TT;>;"
    new-instance v0, Lcom/google/protobuf/nano/Extension;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/nano/Extension;-><init>(ILcom/google/protobuf/nano/Extension$TypeLiteral;)V

    return-object v0
.end method

.method public static createRepeated(ILcom/google/protobuf/nano/Extension$TypeLiteral;)Lcom/google/protobuf/nano/Extension;
    .locals 1
    .parameter "fieldNumber"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/nano/Extension$TypeLiteral",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, type:Lcom/google/protobuf/nano/Extension$TypeLiteral;,"Lcom/google/protobuf/nano/Extension$TypeLiteral<Ljava/util/List<TT;>;>;"
    new-instance v0, Lcom/google/protobuf/nano/Extension;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/nano/Extension;-><init>(ILcom/google/protobuf/nano/Extension$TypeLiteral;)V

    return-object v0
.end method
