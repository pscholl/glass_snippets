.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->start(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    iput-object p2, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    iget-object v1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->start(Landroid/content/Context;)V

    .line 191
    return-void
.end method
