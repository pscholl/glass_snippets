.class final Lcom/google/glass/logging/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/AppErrorReporterActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/AppErrorReporterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/a;->a:Lcom/google/glass/logging/AppErrorReporterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/logging/a;->a:Lcom/google/glass/logging/AppErrorReporterActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/AppErrorReporterActivity;->finish()V

    return-void
.end method
