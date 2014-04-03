.class public Lcom/google/android/voicesearch/LogExtras;
.super Ljava/lang/Object;
.source "LogExtras.java"


# instance fields
.field private final mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/utils/NetworkInformation;)V
    .locals 0
    .parameter "networkInformation"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/voicesearch/LogExtras;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    .line 14
    return-void
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/voicesearch/LogExtras;->mNetworkInformation:Lcom/google/android/speech/utils/NetworkInformation;

    invoke-virtual {v0}, Lcom/google/android/speech/utils/NetworkInformation;->getConnectionId()I

    move-result v0

    return v0
.end method
