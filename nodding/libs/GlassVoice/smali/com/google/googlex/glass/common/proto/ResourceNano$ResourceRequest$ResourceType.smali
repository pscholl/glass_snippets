.class public final Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest$ResourceType;
.super Ljava/lang/Object;
.source "ResourceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResourceType"
.end annotation


# static fields
.field public static final GLASSWARE_ICON_LARGE:I = 0x5

.field public static final GLASSWARE_ICON_MEDIUM:I = 0x3

.field public static final GLASSWARE_ICON_SMALL:I = 0x2

.field public static final GLASSWARE_MESSAGES:I = 0x4

.field public static final STYLESHEET:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest$ResourceType;->this$0:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
