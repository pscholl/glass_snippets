.class final Lcom/google/android/gsf/e;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/google/android/gsf/d;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gsf/e;->a:Lcom/google/android/gsf/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    const-class v1, Lcom/google/android/gsf/c;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gsf/c;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gsf/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
