.class final Lcom/google/glass/logging/x;
.super Lcom/google/glass/net/v;


# instance fields
.field final synthetic a:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/x;->a:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Lcom/google/glass/net/v;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlex/glass/common/proto/t;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/logging/x;->a:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/t;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->a(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/glass/logging/x;->a:Lcom/google/glass/logging/UserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->e(Lcom/google/glass/logging/UserEventService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/glass/logging/x;->a:Lcom/google/glass/logging/UserEventService;

    invoke-static {v2}, Lcom/google/glass/logging/UserEventService;->d(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/protobuf/nano/b;)V
    .locals 0

    check-cast p1, Lcom/google/googlex/glass/common/proto/t;

    invoke-direct {p0, p1}, Lcom/google/glass/logging/x;->a(Lcom/google/googlex/glass/common/proto/t;)V

    return-void
.end method
