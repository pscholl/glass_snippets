.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Type;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Type"
.end annotation


# static fields
.field public static final GROUP:I = 0x0

.field public static final INDIVIDUAL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .parameter

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Type;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
