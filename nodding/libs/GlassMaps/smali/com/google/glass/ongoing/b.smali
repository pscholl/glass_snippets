.class final Lcom/google/glass/ongoing/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/glass/ongoing/OngoingActivityManager;


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/ongoing/b;->a:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/ongoing/b;->a:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/ongoing/b;->a:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-static {v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    return-void
.end method
