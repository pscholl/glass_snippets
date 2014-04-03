.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$TravelMode;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TravelMode"
.end annotation


# static fields
.field public static final BICYCLING:I = 0x3

.field public static final DRIVING:I = 0x1

.field public static final MOST_RECENTLY_USED:I = 0x0

.field public static final TRANSIT:I = 0x4

.field public static final WALKING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2698
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$TravelMode;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
