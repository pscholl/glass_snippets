.class public final Lcom/google/android/maps/driveabout/a/ac;
.super Lcom/google/android/maps/driveabout/a/ad;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/a/ac;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/a/ad;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)Lcom/google/android/maps/driveabout/a/ac;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/a/ac;->a:Lcom/google/android/maps/driveabout/a/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/a/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/a/ac;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/a/ac;->a:Lcom/google/android/maps/driveabout/a/ac;

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/a/ac;->a:Lcom/google/android/maps/driveabout/a/ac;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "/cannedtts/"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "TtsVoiceBundles"

    return-object v0
.end method
