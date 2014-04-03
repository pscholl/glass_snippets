.class final Lcom/google/glass/timeline/AttachmentHelper$1;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"

# interfaces
.implements Lcom/google/glass/net/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/AttachmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoParser$Provider",
        "<",
        "Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper$1;->provide()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method
