.class public Lcom/google/glass/util/HangoutHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/HangoutHelper;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/util/HangoutHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/HangoutHelper;->b:Lcom/google/glass/logging/i;

    return-void
.end method
