.class public Lcom/google/android/maps/driveabout/a/m;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/a/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/m;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "THEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "GPS_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "DATA_LOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "NAVIGATION_RESUMED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "PLEASE_DESCRIBE_PROBLEM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v0, "ARRIVED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v0, "WILL_ARRIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const-string v0, "DESTINATION_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    const-string v0, "DESTINATION_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_0

    :cond_8
    const-string v0, "DESTINATION_WILL_BE_ON_LEFT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_0

    :cond_9
    const-string v0, "DESTINATION_WILL_BE_ON_RIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    const-string v0, "GENERIC_CONTINUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    goto :goto_0

    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/a/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/a/r;-><init>(Lcom/google/android/maps/driveabout/a/m;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/a/m;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/google/android/maps/driveabout/a/p;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/a/p;-><init>(Lcom/google/android/maps/driveabout/a/n;)V

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/a/p;->a(Lcom/google/android/maps/driveabout/a/m;)V

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/a/p;->a(Lcom/google/android/maps/driveabout/a/m;)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/a/p;->a()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
