.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$CommandType;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommandType"
.end annotation


# static fields
.field public static final ADD_A_CALENDAR_EVENT:I = 0x3

.field public static final CHECK_ME_IN:I = 0x2

.field public static final EXPLORE_NEARBY:I = 0x6

.field public static final FIND_A_PLACE:I = 0x5

.field public static final FIND_A_RECIPE:I = 0x4

.field public static final POST_AN_UPDATE:I = 0x1

.field public static final TAKE_A_NOTE:I


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;)V
    .locals 0
    .parameter

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$CommandType;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
