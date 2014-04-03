.class public final Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse$Status;
.super Ljava/lang/Object;
.source "ResourceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Status"
.end annotation


# static fields
.field public static final BAD_REQUEST:I = 0x1

.field public static final NOT_FOUND:I = 0x2

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse$Status;->this$0:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
