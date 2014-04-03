.class final Lcom/google/glass/net/upload/ScottyHelper$ClientHeaders;
.super Ljava/lang/Object;
.source "ScottyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/upload/ScottyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientHeaders"
.end annotation


# static fields
.field static final COMMAND:Ljava/lang/String; = "X-Goog-Upload-Command"

.field static final CONTENT_LENGTH:Ljava/lang/String; = "X-Goog-Upload-Content-Length"

.field static final CONTENT_TYPE:Ljava/lang/String; = "X-Goog-Upload-Content-Type"

.field static final FILE_NAME:Ljava/lang/String; = "X-Goog-Upload-File-Name"

.field static final OFFSET:Ljava/lang/String; = "X-Goog-Upload-Offset"

.field static final PROTOCOL:Ljava/lang/String; = "X-Goog-Upload-Protocol"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
