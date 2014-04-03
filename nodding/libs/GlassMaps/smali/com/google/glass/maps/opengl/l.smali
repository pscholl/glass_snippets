.class final Lcom/google/glass/maps/opengl/l;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/l;->a:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/opengl/l;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/opengl/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/opengl/l;-><init>()V

    return-void
.end method
