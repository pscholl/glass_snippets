.class final Lcom/google/glass/logging/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/util/aj;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/glass/logging/b;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(ZLcom/google/glass/logging/b;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/logging/h;->a:Z

    iput-object p2, p0, Lcom/google/glass/logging/h;->b:Lcom/google/glass/logging/b;

    iput-object p3, p0, Lcom/google/glass/logging/h;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/glass/logging/h;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    const-wide/32 v0, 0x400000

    return-wide v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/glass/logging/h;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/logging/f;->b()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "BUGREPORT"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/logging/h;->b:Lcom/google/glass/logging/b;

    invoke-virtual {v0}, Lcom/google/glass/logging/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MyGlass(Companion) Log"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Connectivity State"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/google/glass/logging/f;->e()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRACE0: /sys/kernel/debug/remoteproc/omap-rproc.1/trace0"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->f()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRACE1: /sys/kernel/debug/remoteproc/omap-rproc.1/trace1"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->g()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRACELAST: /sys/kernel/debug/remoteproc/omap-rproc.1/trace1_last"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->h()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "FPGA REVISION: /sys/devices/platform/omapdss/manager2/panel-notle-dpi/fpga_revision"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/logging/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/logging/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "APK INFO"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temperature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Lcom/google/glass/logging/ah;

    invoke-direct {v2}, Lcom/google/glass/logging/ah;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/logging/ah;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CPU TEMPERATURE"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->i()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "DF"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->j()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "PERSISTENT LOG 0"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->k()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "PERSISTENT LOG 1"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/glass/logging/f;->l()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "PERSISTENT LOG 2"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/logging/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/logging/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PINNED ITEMS"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/logging/h;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/glass/logging/h;->d:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "cat"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {p1, v5, v4}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/glass/logging/f;->d()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "DMESG"

    invoke-static {p1, v0, v2}, Lcom/google/glass/logging/f;->a(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method
