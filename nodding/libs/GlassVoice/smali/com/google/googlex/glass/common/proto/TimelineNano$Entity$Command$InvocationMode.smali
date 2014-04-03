.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$InvocationMode;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InvocationMode"
.end annotation


# static fields
.field public static final BLOCKING:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final NON_BLOCKING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;)V
    .locals 0
    .parameter

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$InvocationMode;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
