.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse$Status;
.super Ljava/lang/Object;
.source "ImageDownloadNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Status"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse$Status;->this$0:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
