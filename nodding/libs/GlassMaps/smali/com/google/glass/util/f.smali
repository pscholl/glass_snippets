.class final Lcom/google/glass/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/f;->a:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/f;->a:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a:Lcom/google/glass/util/e;

    invoke-static {v0}, Lcom/google/glass/util/e;->a(Lcom/google/glass/util/e;)Lcom/google/glass/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/f;->a:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$1;->a:Lcom/google/glass/util/e;

    invoke-static {v0}, Lcom/google/glass/util/e;->a(Lcom/google/glass/util/e;)Lcom/google/glass/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/a;->c()Z

    :cond_0
    return-void
.end method
