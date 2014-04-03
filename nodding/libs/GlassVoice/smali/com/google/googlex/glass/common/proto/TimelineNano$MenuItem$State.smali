.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$State;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "State"
.end annotation


# static fields
.field public static final CONFIRMED:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final PENDING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$State;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
