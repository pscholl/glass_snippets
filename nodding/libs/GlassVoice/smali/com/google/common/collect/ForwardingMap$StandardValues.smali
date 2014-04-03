.class public Lcom/google/common/collect/ForwardingMap$StandardValues;
.super Lcom/google/common/collect/Maps$Values;
.source "ForwardingMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMap;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    .local p0, this:Lcom/google/common/collect/ForwardingMap$StandardValues;,"Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardValues;"
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMap$StandardValues;->this$0:Lcom/google/common/collect/ForwardingMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$Values;-><init>()V

    return-void
.end method


# virtual methods
.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Lcom/google/common/collect/ForwardingMap$StandardValues;,"Lcom/google/common/collect/ForwardingMap<TK;TV;>.StandardValues;"
    iget-object v0, p0, Lcom/google/common/collect/ForwardingMap$StandardValues;->this$0:Lcom/google/common/collect/ForwardingMap;

    return-object v0
.end method
