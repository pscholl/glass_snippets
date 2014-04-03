.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest$Type;
.super Ljava/lang/Object;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Type"
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final RENDER_MAP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;


# direct methods
.method public constructor <init>(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest$Type;->this$0:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
