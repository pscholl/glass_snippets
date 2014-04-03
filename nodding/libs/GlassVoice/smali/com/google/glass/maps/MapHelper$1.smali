.class Lcom/google/glass/maps/MapHelper$1;
.super Landroid/os/Handler;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$1;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$1;->this$0:Lcom/google/glass/maps/MapHelper;

    #calls: Lcom/google/glass/maps/MapHelper;->handleIncomingMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/google/glass/maps/MapHelper;->access$100(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V

    .line 147
    return-void
.end method
