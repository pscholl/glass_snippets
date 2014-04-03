.class final Lcom/google/glass/ongoing/OngoingActivityManager$1;
.super Ljava/lang/Object;
.source "OngoingActivityManager.java"

# interfaces
.implements Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/ongoing/OngoingActivityManager;->getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/os/IBinder;)Landroid/os/Messenger;
    .locals 1
    .parameter "service"

    .prologue
    .line 76
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
