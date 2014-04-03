.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Marker$MarkerType;
.super Ljava/lang/Object;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MarkerType"
.end annotation


# static fields
.field public static final TYPE_MY_LOCATION:I = 0x1

.field public static final TYPE_PLACEMARK:I


# instance fields
.field final synthetic this$0:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;


# direct methods
.method public constructor <init>(Lcom/google/glass/proto/MapRenderingServiceNano$Marker;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker$MarkerType;->this$0:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
