.class public final Lcom/google/googlenav/android/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static final b:Z

.field public static final c:Z

.field public static d:Z

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SOJU"

    aput-object v3, v2, v1

    const-string v3, "SOJUA"

    aput-object v3, v2, v0

    const-string v3, "SOJUK"

    aput-object v3, v2, v5

    const-string v3, "SOJU_L10N"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    const-string v4, "GT-I9000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "GT-I9000B"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "GT-I9000M"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "GT-I9000T"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SC-02B"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "SGH-T959"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "SGH-T959D"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SGH-T959V"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "VIBRANT T959"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "SHW-M110S"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "SCH-I400"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "SGH-I897"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SGH-I896"

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/googlenav/android/b;->e:[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RTGB"

    aput-object v3, v2, v1

    const-string v3, "SHADOW_VZW"

    aput-object v3, v2, v0

    const-string v3, "DAYTONA"

    aput-object v3, v2, v5

    sput-object v2, Lcom/google/googlenav/android/b;->f:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "HTC_VISION"

    aput-object v3, v2, v1

    sput-object v2, Lcom/google/googlenav/android/b;->g:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "SONY ERICSSON"

    aput-object v3, v2, v1

    sput-object v2, Lcom/google/googlenav/android/b;->h:[Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/android/b;->e:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/google/googlenav/android/b;->a:Z

    sget-object v0, Lcom/google/googlenav/android/b;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/b;->b:Z

    sget-object v0, Lcom/google/googlenav/android/b;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/b;->c:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/android/b;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/android/b;->d:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
