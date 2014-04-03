.class final Lcom/google/glass/net/upload/ScottyHelper$ServerHeaders;
.super Ljava/lang/Object;
.source "ScottyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/upload/ScottyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerHeaders"
.end annotation


# static fields
.field static final SIZE_RECEIVED:Ljava/lang/String; = "X-Goog-Upload-Size-Received"

.field static final STATUS:Ljava/lang/String; = "X-Goog-Upload-Status"

.field static final URL:Ljava/lang/String; = "X-Goog-Upload-URL"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
