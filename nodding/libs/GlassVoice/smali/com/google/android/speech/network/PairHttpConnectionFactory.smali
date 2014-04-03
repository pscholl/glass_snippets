.class public Lcom/google/android/speech/network/PairHttpConnectionFactory;
.super Ljava/lang/Object;
.source "PairHttpConnectionFactory.java"

# interfaces
.implements Lcom/google/android/speech/network/S3ConnectionFactory;


# instance fields
.field private final mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mHttpServerInfoSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/android/speech/network/ConnectionFactory;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "connectionFactory"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
            ">;",
            "Lcom/google/android/speech/network/ConnectionFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, pairHttpServerInfo:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/speech/network/PairHttpConnectionFactory;->mHttpServerInfoSupplier:Lcom/google/common/base/Supplier;

    .line 19
    iput-object p2, p0, Lcom/google/android/speech/network/PairHttpConnectionFactory;->mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;

    .line 20
    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/speech/network/S3Connection;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 24
    new-instance v1, Lcom/google/android/speech/network/PairHttpConnection;

    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnectionFactory;->mHttpServerInfoSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnectionFactory;->mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/speech/network/PairHttpConnection;-><init>(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;Lcom/google/android/speech/network/ConnectionFactory;Z)V

    return-object v1
.end method
