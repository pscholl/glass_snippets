.class final Lcom/google/glass/ongoing/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/ongoing/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Landroid/os/Messenger;
    .locals 1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
