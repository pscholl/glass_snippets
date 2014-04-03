.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$CropType;
.super Ljava/lang/Object;
.source "ImageDownloadNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CropType"
.end annotation


# static fields
.field public static final NO_CROP:I = 0x0

.field public static final SMART_CROP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$CropType;->this$0:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
