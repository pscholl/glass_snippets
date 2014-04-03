.class public abstract Lcom/google/googlenav/capabilities/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/googlenav/capabilities/a;


# instance fields
.field private volatile b:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lcom/google/googlenav/capabilities/a;
    .locals 1

    sget-object v0, Lcom/google/googlenav/capabilities/a;->a:Lcom/google/googlenav/capabilities/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.googlenav.capabilities.CapabilitiesControllerSdk11"

    :goto_0
    invoke-static {v0}, Lcom/google/googlenav/capabilities/a;->a(Ljava/lang/String;)Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/capabilities/a;->a:Lcom/google/googlenav/capabilities/a;

    :cond_0
    sget-object v0, Lcom/google/googlenav/capabilities/a;->a:Lcom/google/googlenav/capabilities/a;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.google.googlenav.capabilities.CapabilitiesControllerSdk7"

    goto :goto_0

    :cond_2
    const-string v0, "com.google.googlenav.capabilities.CapabilitiesControllerSdk6"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/googlenav/capabilities/a;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/capabilities/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/capabilities/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Z
.end method

.method public final b()Z
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "wifi-only"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.carrier"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/capabilities/a;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public abstract b(Landroid/content/Context;)Z
.end method
