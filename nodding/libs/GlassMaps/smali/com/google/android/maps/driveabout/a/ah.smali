.class public final Lcom/google/android/maps/driveabout/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ah;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/ah;->b:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/content/Context;ILandroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget v0, Lcom/google/glass/navlib/o;->da_prepare:I

    invoke-static {p0, v0, p2}, Lcom/google/android/maps/driveabout/a/an;->a(Landroid/content/Context;ILandroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/glass/navlib/o;->da_act:I

    invoke-static {p0, v0, p2}, Lcom/google/android/maps/driveabout/a/an;->a(Landroid/content/Context;ILandroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/google/glass/navlib/o;->da_error:I

    invoke-static {p0, v0, p2}, Lcom/google/android/maps/driveabout/a/an;->a(Landroid/content/Context;ILandroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ah;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ah;->b:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/ah;->a(Landroid/content/Context;ILandroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
