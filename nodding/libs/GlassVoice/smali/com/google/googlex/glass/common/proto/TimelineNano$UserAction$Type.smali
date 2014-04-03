.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction$Type;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Type"
.end annotation


# static fields
.field public static final CUSTOM:I = 0x5

.field public static final DELETE:I = 0x6

.field public static final LAUNCH:I = 0x7

.field public static final NEW_MESSAGE:I = 0x1

.field public static final PIN:I = 0x8

.field public static final REPLY:I = 0x3

.field public static final REPLY_ALL:I = 0x4

.field public static final SHARE:I = 0x2

.field public static final UNPIN:I = 0x9


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 0
    .parameter

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction$Type;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
