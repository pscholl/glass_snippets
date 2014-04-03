.class public final Lcom/google/glass/maps/c/p;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/glass/maps/c/p;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/google/glass/maps/c/p;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/glass/maps/c/p;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/glass/maps/c/p;->a:I

    :cond_0
    sget v0, Lcom/google/glass/maps/c/p;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/google/glass/maps/c/p;->b(Landroid/content/Context;I)V

    sput p1, Lcom/google/glass/maps/c/p;->a:I

    :goto_0
    sget v0, Lcom/google/glass/maps/c/p;->a:I

    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/maps/c/p;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/glass/maps/c/p;->a:I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/google/glass/maps/c/p;->a:I

    if-nez v0, :cond_0

    sget v0, Lcom/google/glass/maps/bs;->error_routing_error_driving:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/google/glass/maps/c/p;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/google/glass/maps/bs;->error_routing_error_walking:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/glass/maps/c/p;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget v0, Lcom/google/glass/maps/bs;->error_routing_error_biking:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/glass/maps/c/p;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/google/glass/maps/bs;->error_routing_error_transit:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/google/glass/maps/bs;->error_routing_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "navigation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastTravelMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static c(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const-string v0, "navigation"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastTravelMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
