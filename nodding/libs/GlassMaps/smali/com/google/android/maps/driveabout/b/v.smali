.class public final Lcom/google/android/maps/driveabout/b/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/b/v;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/maps/driveabout/b/v;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "t"

    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "f"

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/google/android/maps/driveabout/b/v;->a:Z

    return-void
.end method
