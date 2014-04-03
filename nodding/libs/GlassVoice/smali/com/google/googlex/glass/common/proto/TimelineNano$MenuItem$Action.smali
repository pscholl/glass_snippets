.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$Action;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Action"
.end annotation


# static fields
.field public static final BROADCAST:I = 0x7

.field public static final CUSTOM:I = 0x0

.field public static final DELETE:I = 0x3

.field public static final HANGOUT:I = 0xe

.field public static final MUTE_MIC:I = 0xb

.field public static final NAVIGATE:I = 0x9

.field public static final OPEN_URI:I = 0xd

.field public static final PLAY_VIDEO:I = 0x11

.field public static final READ_ALOUD:I = 0x5

.field public static final READ_MORE:I = 0x10

.field public static final REPLY:I = 0x2

.field public static final REPLY_ALL:I = 0x6

.field public static final SEARCH:I = 0xa

.field public static final SEND:I = 0x15

.field public static final SEND_MESSAGE:I = 0x12

.field public static final SEND_TO_PHONE:I = 0xc

.field public static final SHARE:I = 0x4

.field public static final SHOW_RECIPIENTS:I = 0x14

.field public static final TOGGLE_PINNED:I = 0xf

.field public static final VIEW_WEBSITE:I = 0xd

.field public static final VOICE_CALL:I = 0x8

.field public static final VOLUME:I = 0x13


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2667
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$Action;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
