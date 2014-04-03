.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$MessagingOption;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessagingOption"
.end annotation


# static fields
.field public static final EMAIL:I = 0x1

.field public static final PERSONA:I = 0x0

.field public static final SMS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .parameter

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$MessagingOption;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
