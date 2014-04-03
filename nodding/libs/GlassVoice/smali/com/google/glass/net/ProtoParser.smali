.class public Lcom/google/glass/net/ProtoParser;
.super Ljava/lang/Object;
.source "ProtoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ProtoParser$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private provider:Lcom/google/glass/net/ProtoParser$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser$Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/glass/net/ProtoParser$Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoParser$Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p1, provider:Lcom/google/glass/net/ProtoParser$Provider;,"Lcom/google/glass/net/ProtoParser$Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/google/glass/net/ProtoParser;->provider:Lcom/google/glass/net/ProtoParser$Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public parse([B)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    iget-object v1, p0, Lcom/google/glass/net/ProtoParser;->provider:Lcom/google/glass/net/ProtoParser$Provider;

    invoke-interface {v1}, Lcom/google/glass/net/ProtoParser$Provider;->provide()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 28
    .local v0, proto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 29
    return-object v0
.end method
