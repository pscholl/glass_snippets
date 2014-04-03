.class public final Lcom/google/userfeedback/android/api/ab;
.super Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:J

.field public C:Ljava/util/List;

.field public D:I

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/util/List;

.field public H:Ljava/lang/String;

.field public I:Lcom/google/userfeedback/android/api/aa;

.field public J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:Ljava/lang/String;

.field public u:[B

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->p:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->G:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ab;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/ab;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->I:Lcom/google/userfeedback/android/api/aa;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/ab;->K:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/ab;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/ab;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/ab;->L:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
