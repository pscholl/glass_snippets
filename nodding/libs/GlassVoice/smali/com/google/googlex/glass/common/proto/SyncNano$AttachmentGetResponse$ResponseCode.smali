.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse$ResponseCode;
.super Ljava/lang/Object;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResponseCode"
.end annotation


# static fields
.field public static final FAIL:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse$ResponseCode;->this$0:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
