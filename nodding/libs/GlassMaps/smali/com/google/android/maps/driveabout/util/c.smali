.class public abstract Lcom/google/android/maps/driveabout/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final queueIdle()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/c;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
