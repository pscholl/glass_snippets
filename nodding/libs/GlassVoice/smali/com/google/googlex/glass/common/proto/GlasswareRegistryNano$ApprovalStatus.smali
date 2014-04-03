.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$ApprovalStatus;
.super Ljava/lang/Object;
.source "GlasswareRegistryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ApprovalStatus"
.end annotation


# static fields
.field public static final APPROVED:I = 0x1

.field public static final REJECTED:I = 0x2

.field public static final UNREVIEWED:I


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$ApprovalStatus;->this$0:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
