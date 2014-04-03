.class final Lcom/google/android/maps/driveabout/location/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/location/i;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/location/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/j;->a:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/j;->a:Lcom/google/android/maps/driveabout/location/i;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Lcom/google/android/maps/driveabout/location/i;Landroid/os/Message;)V

    return-void
.end method
