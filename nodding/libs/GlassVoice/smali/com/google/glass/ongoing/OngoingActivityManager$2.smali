.class Lcom/google/glass/ongoing/OngoingActivityManager$2;
.super Ljava/lang/Object;
.source "OngoingActivityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/ongoing/OngoingActivityManager;


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    #calls: Lcom/google/glass/ongoing/OngoingActivityManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->access$100(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 115
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    #calls: Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V
    invoke-static {v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->access$000(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    .line 111
    return-void
.end method
