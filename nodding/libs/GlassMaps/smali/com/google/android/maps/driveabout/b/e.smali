.class final Lcom/google/android/maps/driveabout/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/k;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/a;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/e;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/b/a;Lcom/google/android/maps/driveabout/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/e;-><init>(Lcom/google/android/maps/driveabout/b/a;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/e;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/b/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/b/f;-><init>(Lcom/google/android/maps/driveabout/b/e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
