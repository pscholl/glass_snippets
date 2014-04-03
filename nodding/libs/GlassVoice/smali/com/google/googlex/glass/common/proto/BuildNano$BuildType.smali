.class public final Lcom/google/googlex/glass/common/proto/BuildNano$BuildType;
.super Ljava/lang/Object;
.source "BuildNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BuildNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BuildType"
.end annotation


# static fields
.field public static final ENG:I = 0x2

.field public static final USER:I = 0x0

.field public static final USERDEBUG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/BuildNano;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/BuildNano;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$BuildType;->this$0:Lcom/google/googlex/glass/common/proto/BuildNano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
