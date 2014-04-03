.class Lcom/google/glass/net/ProtoRequestDispatcher$1;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/net/ProtoRequestDispatcher$Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$1;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/glass/net/ProtoRequestDispatcher$Request;)I
    .locals 1
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 263
    iget-boolean v0, p1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-nez v0, :cond_0

    .line 264
    const/4 v0, -0x1

    .line 269
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-boolean v0, p1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->isImmediate:Z

    if-eqz v0, :cond_1

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    check-cast p1, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .end local p1
    check-cast p2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/net/ProtoRequestDispatcher$1;->compare(Lcom/google/glass/net/ProtoRequestDispatcher$Request;Lcom/google/glass/net/ProtoRequestDispatcher$Request;)I

    move-result v0

    return v0
.end method
