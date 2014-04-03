.class final Lcom/google/glass/ongoing/OngoingActivityMessage;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

.field private final c:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

.field private final d:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityMessage;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->b:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->c:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->b:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method final b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "activity"

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->b:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v2}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "operation"

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->c:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-virtual {v2}, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "params"

    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->b:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityMessage;->c:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
