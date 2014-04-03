.class public final Lcom/google/googlex/glass/common/proto/HardwareVersionProto$HardwareVersion;
.super Ljava/lang/Object;
.source "HardwareVersionProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/HardwareVersionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HardwareVersion"
.end annotation


# static fields
.field public static final UNVERSIONED:I = 0x7

.field public static final V1_DVT1:I = 0x4

.field public static final V1_EVT1:I = 0x1

.field public static final V1_EVT2:I = 0x2

.field public static final V1_EVT3:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/HardwareVersionProto;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/HardwareVersionProto;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/HardwareVersionProto$HardwareVersion;->this$0:Lcom/google/googlex/glass/common/proto/HardwareVersionProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
